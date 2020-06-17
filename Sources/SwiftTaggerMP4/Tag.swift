//
//  Tag.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 5/2/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import AVFoundation
import Cocoa
import CMP4v2

public struct Tag {
    
    var metadata: [AVMetadataItem]
    var fileHandle: MP4FileHandle
    var toc: TableOfContents
    
    public init(from file: Mp4File) throws {
        self.fileHandle = file.fileHandle
        // Load metadata first
        let asset = file.asset
        let formatsKey = "availableMetadataFormats"
        let chapterLocalesKey = "availableChapterLocales"

        // Asynchronous weirdness begins here.
        var result: Result<AVKeyValueStatus, Error> = .success(.loaded)
        var inProgress = true
        
        asset.loadValuesAsynchronously(forKeys: [formatsKey]) {
            defer { inProgress = false }
            
            var error: NSError? = nil
            let status = asset.statusOfValue(forKey: formatsKey, error: &error)
            if let failure = error {
                result = .failure(failure)
            } else {
                result = .success(status)
            }
        }
        asset.loadValuesAsynchronously(forKeys: [chapterLocalesKey]) {
            defer { inProgress = false }
            
            var error: NSError? = nil
            let status = asset.statusOfValue(forKey: chapterLocalesKey, error: &error)
            if let failure = error {
                result = .failure(failure)
            } else {
                result = .success(status)
            }
        }
        
        while inProgress {
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        }
        // Asynchronous weirdness ends here.
        
        var loadedMetadata: [AVMetadataItem] = []
        var timedMetadataGroups: [AVTimedMetadataGroup] = []
        switch result {
            case .failure(let error):
                throw error
            case .success(let status):
                switch status {
                    case .loaded:
                        for format in asset.availableMetadataFormats {
                            loadedMetadata.append(contentsOf: asset.metadata(forFormat: format))
                        }
                        let languages = Locale.preferredLanguages
                        timedMetadataGroups = asset.chapterMetadataGroups(
                            bestMatchingPreferredLanguages: languages)
                        inProgress = false
                    case .loading: fatalError("Status 'loading' should not coincide with result 'success'")
                    case .cancelled: throw Mp4File.Error.LoadingCancelled
                    case .unknown: fatalError("Status 'unknown' should not coincide with result 'success'")
                    case .failed: throw Mp4File.Error.LoadingError
                    @unknown default: inProgress = false
            }
        }
        self.metadata = loadedMetadata
        
        var chapterGroups: [Int: TableOfContents.Chapter] = [:]
        for group in timedMetadataGroups {
            // Retrieve AVMetadataCommonIdentifierTitle metadata items
            let titleItems = AVMetadataItem.metadataItems(from: group.items, filteredByIdentifier: AVMetadataIdentifier.commonIdentifierTitle)
            
            //            // Retrieve AVMetadataCommonIdentifierTitle metadata items
            //            let artworkItems = AVMetadataItem.metadataItems(from: group.items, filteredByIdentifier: AVMetadataIdentifier.commonIdentifierArtwork)
            
            let startTime = Int(group.timeRange.start.seconds * 1000)
            var chapter = TableOfContents.Chapter(title: "Chapter Title")
            if let titleValue = titleItems.first?.stringValue {
                chapter = TableOfContents.Chapter(title: titleValue)
            }
            
            //            if let imageData = artworkItems.first?.dataValue,
            //                let image = NSImage(data: imageData) {
            //                chapter.chapterThumbnail = image
            //            }
            chapterGroups[startTime] = chapter
        }
        let fileDuration = Int(asset.duration.seconds * 1000)
        self.toc = TableOfContents(
            chapters: chapterGroups,
            fileDuration: fileDuration)
    }
}


@available(OSX 10.13, *)
extension Tag {
    
    // MARK: Private Helper - getters
    private func string(for identifier: Metadata) -> String? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            return item.stringValue
        }; return nil
    }
    
    private func stringFromData(for identifier: Metadata) -> String? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            if let data = item.dataValue {
                return String(decoding: data, as: UTF8.self)
            }
        }; return nil
    }
    
    private func integer(for identifier: Metadata) -> Int? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            return item.numberValue as? Int
        }; return nil
    }
    
    private func intArrayFromData(for identifier: Metadata) -> [Int]? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            if let data = item.dataValue {
                let firstRange: Range<Int>
                let lastRange: Range<Int>
                if data.count > 4 {
                    firstRange = 2..<4
                    lastRange = 4..<6
                } else {
                    firstRange = 0..<2
                    lastRange = 2..<4
                }
                let firstData = item.dataValue?.subdata(in: firstRange)
                let lastData = item.dataValue?.subdata(in: lastRange)
                let firstUInt16 = firstData?.uint16.bigEndian ?? 0x0000
                let lastUInt16 = lastData?.uint16.bigEndian ?? 0x0000
                let first = Int(firstUInt16)
                let last = Int(lastUInt16)
                return [first, last]
            }
        }; return nil
    }
    
    private func boolean(for identifier: Metadata) -> Bool? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            return item.numberValue?.boolValue
        }; return nil
    }
    
    private func date(for identifier: Metadata) -> (
        year: Int?,
        month: Int?,
        day: Int?,
        hour: Int?,
        minute: Int?)? {
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: identifier.rawValue,
                keySpace: identifier.keySpace)
            if let item = items.first {
                let calendar = Calendar(identifier: .iso8601)
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                var year: Int?
                var month: Int?
                var day: Int?
                var hour: Int?
                var minute: Int?
                if identifier == .recordingDate {
                    if let date = item.dateValue {
                        let components = calendar.dateComponents(in: timeZone, from: date)
                        year = components.year
                        month = components.month
                        day = components.day
                        hour = components.hour
                        minute = components.minute
                    }
                } else {
                    if let dateString = item.stringValue {
                        let formatterA = ISO8601DateFormatter().withInternetDateTimeAndGMT0
                        let formatterB = ISO8601DateFormatter().withDashAndGMT0
                        var components = DateComponents()
                        if let date = formatterA.date(from: dateString) {
                            components = calendar.dateComponents(in: timeZone, from: date)
                        } else if let date = formatterB.date(from: dateString) {
                            components = calendar.dateComponents(in: timeZone, from: date)
                        }
                        year = components.year
                        month = components.month
                        day = components.day
                        hour = components.hour
                        minute = components.minute
                    }
                }
                return (year,month,day,hour,minute)
            }; return (nil, nil, nil, nil, nil)
    }
        
    // MARK: Private Helpers - setters
    private mutating func set(metadataItem: Metadata, to string: String) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        item.value = string as NSString
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to data: Data) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        item.value = data as NSData
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to integer: Int) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        let int8Items: [Metadata] = [.compilation, .contentRating, .mediaType, .podcast]
        let int16Items: [Metadata] = [.bpm, .movementNumber, .movementTotal]
        let int32Items: [Metadata] = [.episodeNumber, .genreID, .season]
        
        if int8Items.contains(metadataItem) {
            let int8 = Int8(integer)
            item.value = int8 as NSNumber
        } else if int16Items.contains(metadataItem) {
            let int16 = Int16(integer)
            item.value = int16 as NSNumber
        } else if int32Items.contains(metadataItem) {
            let int32 = Int32(integer)
            item.value = int32 as NSNumber
        } else {
            item.value = integer as NSNumber
        }
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to stringArray: [String]) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        item.value = stringArray.joined(separator: ",") as NSString
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to intArray: [Int]) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        var data = Data()
        if let firstInt = intArray.first {
            // the data starts with two zero bytes
            data.append(contentsOf: [0x0, 0x0])
            let uInt16 = UInt16(firstInt).bigEndian
            let firstData = uInt16.data
            data.append(firstData)
        }
        if let lastInt = intArray.last {
            let uInt16 = UInt16(lastInt).bigEndian
            let lastData = uInt16.data
            // disc number is 6 bytes, track number is 8 bytes
            if metadataItem == .discNumber {
                data.append(lastData)
            } else {
                data.append(lastData)
                data.append(contentsOf: [0x0, 0x0])
            }
        }
        item.value = data as NSData
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to components: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        
        let formatter = ISO8601DateFormatter().withInternetDateTimeAndGMT0
        let calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0)
        let components = DateComponents(
            calendar: calendar,
            timeZone: timeZone,
            year: components.year,
            month: components.month,
            day: components.day,
            hour: components.hour,
            minute: components.minute)
        if let date = components.date {
            let dateString = formatter.string(from: date)
            item.value = dateString as NSString
        }
        var metadata = self.metadata
        for (index, dataItem) in metadata.enumerated() {
            if dataItem.key as? NSString == metadataItem.rawValue as NSString {
                metadata.remove(at: index)
            }
        }
        metadata.append(item)
        self.metadata = metadata
    }
    
    // MARK: Convenience getter/setters
    var acknowledgment: String? {
        get { string(for: .acknowledgment) }
        set { set(metadataItem: .acknowledgment, to: newValue ?? "") }
    }
    
    var album: String? {
        get { string(for: .album) }
        set { set(metadataItem: .album, to: newValue ?? "") }
    }
    
    var albumArtist: String? {
        get { string(for: .albumArtist) }
        set { set(metadataItem: .albumArtist, to: newValue ?? "") }
    }
    
    var albumArtistSort: String? {
        get { string(for: .albumArtistSort) }
        set { set(metadataItem: .albumArtistSort, to: newValue ?? "") }
    }
    
    var albumSort: String? {
        get { string(for: .albumSort) }
        set { set(metadataItem: .albumSort, to: newValue ?? "") }
    }
    
    var arranger: String? {
        get { string(for: .arranger) }
        set { set(metadataItem: .arranger, to: newValue ?? "") }
    }
    
    var artDirector: String? {
        get { string(for: .artDirector) }
        set { set(metadataItem: .artDirector, to: newValue ?? "") }
    }
    
    var artist: String? {
        get { string(for: .artist) }
        set { set(metadataItem: .artist, to: newValue ?? "") }
    }
    
    var artistSort: String? {
        get { string(for: .artistSort) }
        set { set(metadataItem: .artistSort, to: newValue ?? "") }
    }
    
    var artistWebpage: String? {
        get { string(for: .artistWebpage) }
        set { set(metadataItem: .artistWebpage, to: newValue ?? "") }
    }
    
    var audioFileWebpage: String? {
        get {
            if let str = string(for: .audioFileWebpage) {
                return str
            }; return nil
        }
        set {
            set(metadataItem: .audioFileWebpage, to: newValue ?? "")
        }
    }
    
    var audioSourceWebpage: String? {
        get {
            if let str = string(for: .audioSourceWebpage) {
                return str
            }; return nil
        }
        set {
            set(metadataItem: .audioSourceWebpage, to: newValue ?? "")
        }
    }
    
    var bpm: Int? {
        get { integer(for: .bpm) }
        set { set(metadataItem: .bpm, to: newValue ?? 0) }
    }
    
    var comment: String? {
        get { string(for: .comment) }
        set { set(metadataItem: .comment, to: newValue ?? "") }
    }
    
    var compilation: Bool? {
        get { boolean(for: .compilation) }
        set {
            if newValue == true {
                set(metadataItem: .compilation, to: 1)
            } else {
                set(metadataItem: .compilation, to: 0)
            }
        }
    }
    
    var composer: String? {
        get { string(for: .composer) }
        set { set(metadataItem: .composer, to: newValue ?? "") }
    }
    
    var composerSort: String? {
        get { string(for: .composerSort) }
        set { set(metadataItem: .composerSort, to: newValue ?? "") }
    }
    
    var conductor: String? {
        get { string(for: .conductor) }
        set { set(metadataItem: .conductor, to: newValue ?? "") }
    }
    
    var contentAdvisory: ContentAdvisory? {
        get {
            let stringValue = string(for: .contentAdvisory) ?? ""
            if let rating = ContentAdvisory(rawValue: stringValue) {
                return rating
            }; return nil
        }
        set {
            if let new = newValue {
                set(metadataItem: .contentAdvisory, to: new.rawValue)
            }
        }
    }
    
    var contentRating: ContentRating? {
        get {
            let int = integer(for: .contentRating) ?? 0
            if let rating = ContentRating(rawValue: int) {
                return rating
            }; return nil
        }
        set {
            if let new = newValue {
                let newInt = new.rawValue
                set(metadataItem: .contentRating, to: newInt)
            }
        }
    }
    
    var copyright: String? {
        get { string(for: .copyright) }
        set { set(metadataItem: .copyright, to: newValue ?? "") }
    }
    
    var copyrightWebpage: String? {
        get { string(for: .copyrightWebpage) }
        set { set(metadataItem: .copyrightWebpage, to: newValue ?? "") }
    }
    
    var description: String? {
        get { string(for: .description) }
        set { set(metadataItem: .description, to: newValue ?? "") }
    }
    
    var director: String? {
        get { string(for: .director) }
        set { set(metadataItem: .director, to: newValue ?? "") }
    }
    
    var discNumber: [Int]? {
        get { intArrayFromData(for: .discNumber) }
        set { set(metadataItem: .discNumber, to: newValue ?? [])
        }
    }
    
    var encodedBy: String? {
        get { string(for: .encodedBy) }
        set { set(metadataItem: .encodedBy, to: newValue ?? "") }
    }
    
    var encodingTool: String? {
        get { string(for: .encodingTool) }
        set { set(metadataItem: .encodingTool, to: newValue ?? "") }
    }
    
    var encodingSettings: String? {
        get { string(for: .encodingSettings) }
        set { set(metadataItem: .encodingSettings, to: newValue ?? "") }
    }
    
    var episodeNumber: Int? {
        get { integer(for: .episodeNumber) }
        set { set(metadataItem: .episodeNumber, to: newValue ?? 0) }
    }
    
    var episodeTitle: String? {
        get { string(for: .episodeTitle) }
        set { set(metadataItem: .episodeTitle, to: newValue ?? "") }
    }
    
    var executiveProducer: String? {
        get { string(for: .executiveProducer) }
        set { set(metadataItem: .executiveProducer, to: newValue ?? "") }
    }
    
    var genre: String? {
        get { string(for: .genre) }
        set { set(metadataItem: .genre, to: newValue ?? "") }
    }
    
    var genreID: Genres? {
        get {
            let int = integer(for: .genreID) ?? 0
            if let genre = Genres(rawValue: int) {
                return genre
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let newInt = new.rawValue
                set(metadataItem: .genreID, to: newInt)
            }
        }
    }
    
    var initialKey: KeySignature? {
        get {
            if let str = string(for: .initialKey) {
                if let key = KeySignature(rawValue: str) {
                    return key
                }; return nil
            }; return nil
        }
        set {
            if let new = newValue {
                set(metadataItem: .initialKey, to: new.rawValue)
            }
        }
    }
    
    var isrc: Int? {
        get { integer(for: .isrc) }
        set {
            if let new = newValue {
                let newString = String(new)
                set(metadataItem: .isrc, to: newString)
            }
        }
    }
    
    var language: [ISO6392Codes]? {
        get {
            if let str = string(for: .language) {
                var languageArray: [ISO6392Codes] = []
                let stringArray = str.components(separatedBy: ",")
                for string in stringArray {
                    if let language = ISO6392Codes(rawValue: string) {
                        languageArray.append(language)
                    }
                }
                return languageArray
            }; return nil
        }
        set {
            if let new = newValue {
                var stringArray: [String] = []
                for languageCode in new {
                    stringArray.append(languageCode.rawValue)
                }
                set(metadataItem: .language, to: stringArray)
            }
        }
    }
    
    var linerNotes: String? {
        get { string(for: .linerNotes) }
        set { set(metadataItem: .linerNotes, to: newValue ?? "") }
    }
    
    var longDescription: String? {
        get { string(for: .longDescription) }
        set { set(metadataItem: .longDescription, to: newValue ?? "") }
    }
    
    var lyricist: String? {
        get { string(for: .lyricist) }
        set { set(metadataItem: .lyricist, to: newValue ?? "") }
    }
    
    var lyrics: String? {
        get { string(for: .lyrics) }
        set { set(metadataItem: .lyrics, to: newValue ?? "") }
    }
    
    var mediaType: MediaType? {
        get {
            if let mediaType = self.genreID?.mediaType {
                return mediaType
            } else {
                let int = integer(for: .mediaType) ?? 0
                if let type = MediaType(rawValue: int) {
                    return type
                }; return nil
            }
        }
        set {
            if let new = newValue {
                let newInt = new.rawValue
                set(metadataItem: .mediaType, to: newInt)
            }
        }
    }
    
    var mood: String? {
        get { string(for: .mood) }
        set { set(metadataItem: .mood, to: newValue ?? "") }
    }
    
    var movementName: String? {
        get { string(for: .movementName) }
        set { set(metadataItem: .movementName, to: newValue ?? "") }
    }
    
    var movementNumber: Int? {
        get { integer(for: .movementNumber) }
        set { set(metadataItem: .movementNumber, to: newValue ?? 0) }
    }
    
    var totalMovements: Int? {
        get { integer(for: .movementTotal) }
        set { set(metadataItem: .movementTotal, to: newValue ?? 0) }
    }
    
    var narrator: String? {
        get { string(for: .narrator) }
        set { set(metadataItem: .narrator, to: newValue ?? "") }
    }
    
    var network: String? {
        get { string(for: .network) }
        set { set(metadataItem: .network, to: newValue ?? "") }
    }
    
    var onlineExtras: String? {
        get { string(for: .onlineExtras) }
        set { set(metadataItem: .onlineExtras, to: newValue ?? "") }
    }
    
    var originalAlbum: String? {
        get {
            if let str = string(for: .originalAlbum) {
                return str
            }; return nil
        }
        set {
            set(metadataItem: .originalAlbum, to: newValue ?? "")
        }
    }
    
    var originalArtist: String? {
        get { string(for: .originalArtist) }
        set { set(metadataItem: .originalArtist, to: newValue ?? "") }
    }
    
    var originalFilename: String? {
        get { string(for: .originalFilename) }
        set { set(metadataItem: .originalFilename, to: newValue ?? "") }
    }
    
    var originalLyricist: String? {
        get { string(for: .originalLyricist) }
        set { set(metadataItem: .originalLyricist, to: newValue ?? "") }
    }
    
    var paymentWebpage: String? {
        get { string(for: .paymentWebpage) }
        set { set(metadataItem: .paymentWebpage, to: newValue ?? "") }
    }
    
    var performer: String? {
        get { string(for: .performer) }
        set { set(metadataItem: .performer, to: newValue ?? "") }
    }
    
    var phonogramRights: String? {
        get { string(for: .phonogramRights) }
        set { set(metadataItem: .phonogramRights, to: newValue ?? "") }
    }
    
    var podcast: Bool? {
        get { boolean(for: .podcast) }
        set {
            if newValue == true {
                set(metadataItem: .podcast, to: 1)
            } else {
                set(metadataItem: .podcast, to: 0)
            }
        }
    }
    
    var podcastCategory: String? {
        get { string(for: .podcastCategory) }
        set { set(metadataItem: .podcastCategory, to: newValue ?? "") }
    }
    
    var podcastDescription: String? {
        get { string(for: .podcastDescription) }
        set { set(metadataItem: .podcastDescription, to: newValue ?? "") }
    }
    
    var podcastID: String? {
        get { string(for: .podcastID) }
        set { set(metadataItem: .podcastID, to: newValue ?? "") }
    }
    
    var podcastKeywords: [String]? {
        get {
            if let str = string(for: .podcastKeywords) {
                return str.components(separatedBy: ",")
            }; return nil
        }
        set {
            if let new = newValue {
                let string = new.joined(separator: ",")
                set(metadataItem: .podcastKeywords, to: string)
            }
        }
    }

    var podcastUrl: String? {
        get {
            if let str = stringFromData(for: .podcastUrl) {
                return str
            } else if let str = string(for: .podcastUrl) {
                return str
            }; return nil
        }
        set {
            if let new = newValue {
                let newData = new.encodedASCII()
                set(metadataItem: .podcastUrl, to: newData)
            }
        }
    }
    
    var predefinedGenre: Genres? {
        get {
            let str = string(for: .predefinedGenre) ?? ""
            if let genre = Genres(genreName: str) {
                return genre
            } else {
                return nil
            }
        }
        set {
            set(metadataItem: .predefinedGenre, to: newValue?.predefinedGenres ?? "")
        }
    }
    
    var producer: String? {
        get { string(for: .producer) }
        set { set(metadataItem: .producer, to: newValue ?? "") }
    }
    
    var publisher: String? {
        get { string(for: .publisher) }
        set { set(metadataItem: .publisher, to: newValue ?? "") }
    }
    
    var publisherWebpage: String? {
        get { string(for: .publisherWebpage) }
        set { set(metadataItem: .publisherWebpage, to: newValue ?? "") }
    }
    
    var radioStation: String? {
        get { string(for: .radioStation) }
        set { set(metadataItem: .radioStation, to: newValue ?? "") }
    }
    
    var radioStationOwner: String? {
        get { string(for: .radioStationOwner) }
        set { set(metadataItem: .radioStationOwner, to: newValue ?? "") }
    }
    
    var radioStationWebpage: String? {
        get { string(for: .radioStationWebpage) }
        set { set(metadataItem: .radioStationWebpage, to: newValue ?? "") }
    }
    
    var recordCompany: String? {
        get { string(for: .recordCompany) }
        set { set(metadataItem: .recordCompany, to: newValue ?? "") }
    }
    
    var season: Int? {
        get { integer(for: .season) }
        set { set(metadataItem: .season, to: newValue ?? 0) }
    }
    
    var seriesName: String? {
        get { string(for: .series) }
        set { set(metadataItem: .series, to: newValue ?? "") }
    }
    
    var seriesDescription: String? {
        get { string(for: .seriesDescription) }
        set { set(metadataItem: .seriesDescription, to: newValue ?? "") }
    }
    
    var seriesSort: String? {
        get { string(for: .seriesSort) }
        set { set(metadataItem: .seriesSort, to: newValue ?? "") }
    }
    
    var soloist: String? {
        get { string(for: .soloist) }
        set { set(metadataItem: .soloist, to: newValue ?? "") }
    }
    
    var soundEngineer: String? {
        get { string(for: .soundEngineer) }
        set { set(metadataItem: .soundEngineer, to: newValue ?? "") }
    }
    
    var sourceCredit: String? {
        get { string(for: .sourceCredit) }
        set { set(metadataItem: .sourceCredit, to: newValue ?? "") }
    }
    
    var thanks: String? {
        get { string(for: .thanks) }
        set { set(metadataItem: .thanks, to: newValue ?? "") }
    }
    
    var title: String? {
        get { string(for: .title) }
        set { set(metadataItem: .title, to: newValue ?? "") }
    }
    
    var titleSort: String? {
        get { string(for: .titleSort) }
        set { set(metadataItem: .titleSort, to: newValue ?? "") }
    }
    
    var trackNumber: [Int]? {
        get { intArrayFromData(for: .trackNumber) }
        set { set(metadataItem: .trackNumber, to: newValue ?? [])
        }
    }
    
    var trackSubtitle: String? {
        get { string(for: .trackSubtitle) }
        set { set(metadataItem: .trackSubtitle, to: newValue ?? "") }
    }
    
    var work: String? {
        get { string(for: .work) }
        set { set(metadataItem: .work, to: newValue ?? "") }
    }
    
    var encodingTime: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .encodingTime)
        }
        set {
            if let new = newValue {
                set(metadataItem: .encodingTime, to: new)
            }
        }
    }
    
    var originalReleaseYear: Int? {
        get {
            let components = date(for: .originalYear)
            return components?.year
        }
        set {
            let new: (Int?, Int?, Int?, Int?, Int?) = (newValue, nil, nil, nil, nil)
            set(metadataItem: .originalYear, to: new)
        }
    }
    
    var purchaseDate: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .purchaseDate)
        }
        set {
            if let new = newValue {
                set(metadataItem: .purchaseDate, to: new)
            }
        }
    }
    
    var recordingDate: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .recordingDate)
        }
        set {
            if let new = newValue {
                set(metadataItem: .recordingDate, to: new)
            }
        }
    }
    
    var releaseDate: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .releaseDate)
        }
        set {
            if let new = newValue {
                set(metadataItem: .releaseDate, to: new)
            }
        }
    }
    
    var taggingTime: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .taggingTime)
        }
        set {
            if let new = newValue {
                set(metadataItem: .taggingTime, to: new)
            }
        }
    }
    
    var year: Int? {
        get {
            let components = date(for: .year)
            return components?.year
        }
        set {
            let new: (Int?, Int?, Int?, Int?, Int?) = (newValue, nil, nil, nil, nil)
            set(metadataItem: .year, to: new)
        }
    }
    
    var coverImage: NSImage? {
        let identifier: Metadata = .artwork
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            if let itemData = item.dataValue {
                if let image = NSImage(data: itemData) {
                    return image
                } else {
                    return nil
                }
            } else {
                return nil
            }
        } else {
            return nil
        }
    }

    mutating func setCoverImage(to imageUrl: URL) throws {
        let imageData = try Data(contentsOf: imageUrl)
        let item = AVMutableMetadataItem()
        let metadataItem: Metadata = .artwork
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        item.value = imageData as NSData
        self.metadata.append(item)
    }
    
}

