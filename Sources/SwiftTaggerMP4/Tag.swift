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

public struct Tag {
    
    var metadata: [AVMetadataItem]
    
    public init(from file: Mp4File) {
        let asset = file.asset
        self.metadata = asset.metadata
    }
}

@available(OSX 10.13, *)
extension Tag {
    
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
    
    private func data(for identifier: Metadata) -> Data? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            return item.dataValue
        }; return nil
    }
    
    private func date(for identifier: Metadata) -> Date? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
        if let item = items.first {
            return item.dateValue
        }; return nil
    }
    
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
        item.value = integer as NSNumber
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to boolean: Bool) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        item.value = boolean as NSNumber
        self.metadata.append(item)
    }
    
    private mutating func set(metadataItem: Metadata, to stringArray: [String]) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        item.value = stringArray.joined(separator: ";") as NSString
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
    
    private mutating func set(metadataItem: Metadata, to date: Date) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        let formatter = ISO8601DateFormatter().withInternetDateTimeAndGMT0
        item.value = formatter.string(from: date) as NSString
        self.metadata.append(item)
    }
    
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
            if let str = string(for: .audioFileWebpageYate) {
                return str
            } else if let str = string(for: .audioFileWebpageKid3) {
                return str
            }; return nil
        }
        set {
            set(metadataItem: .audioFileWebpageYate, to: newValue ?? "")
            set(metadataItem: .audioFileWebpageKid3, to: newValue ?? "")
        }
    }
    
    var audioSourceWebpage: String? {
        get {
            if let str = string(for: .audioSourceWebpageYate) {
                return str
            } else if let str = string(for: .audioSourceWebpageKid3) {
                return str
            }; return nil
        }
        set {
            set(metadataItem: .audioSourceWebpageYate, to: newValue ?? "")
            set(metadataItem: .audioSourceWebpageKid3, to: newValue ?? "")
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
                set(metadataItem: .contentRating, to: new.rawValue)
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

    var encodingTime: Date? {
        get { date(for: .encodingTime) }
        set { set(metadataItem: .encodingTime, to: newValue ?? Date.distantPast) }
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
                set(metadataItem: .genreID, to: new.rawValue)
            }
        }
    }

    var initialKey: KeySignature? {
        get {
            if let str = string(for: .initialKeyYate) {
                if let key = KeySignature(rawValue: str) {
                    return key
                }; return nil
            } else if let str = string(for: .initialKeyKid3) {
                if let key = KeySignature(rawValue: str) {
                    return key
                }; return nil
            }; return nil
        }
        set {
            if let new = newValue {
                set(metadataItem: .initialKeyYate, to: new.rawValue)
                set(metadataItem: .initialKeyKid3, to: new.rawValue)
            }
        }
    }
    
    var isrc: Int? {
        get { integer(for: .isrc) }
        set { set(metadataItem: .isrc, to: newValue ?? 0) }
    }
    
    #warning("make this a string array")
    var language: ISO6392Codes? {
        get {
            let str = string(for: .language) ?? "und"
            if let language = ISO6392Codes(rawValue: str) {
                return language
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                set(metadataItem: .language, to: new.rawValue)
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
                set(metadataItem: .mediaType, to: new.rawValue)
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
            if let str = string(for: .originalAlbumYate) {
                return str
            } else if let str = string(for: .originalAlbumKid3) {
                return str
            } else {
                return nil
            }
        }
        set {
            set(metadataItem: .originalAlbumYate, to: newValue ?? "")
            set(metadataItem: .originalAlbumKid3, to: newValue ?? "")
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
    
    var originalReleaseDate: Date? {
        get {
            if let date = date(for: .originalYearYate) {
                return date
            } else if let date = date(for: .originalYearKid3) {
                return date
            }; return nil
        }
        set {
            set(metadataItem: .originalYearYate, to: newValue ?? Date.distantPast)
            set(metadataItem: .originalYearKid3, to: newValue ?? Date.distantPast)
        }
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

    #warning("make this an array if it will work")
    var podcastKeywords: String? {
        get { string(for: .podcastKeywords) }
        set { set(metadataItem: .podcastKeywords, to: newValue ?? "") }
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
    
    var purchaseDate: Date? {
        get { date(for: .purchaseDate) }
        set { set(metadataItem: .purchaseDate, to: newValue ?? Date.distantPast) }
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
    
    var recordingDate: Date? {
        get { date(for: .recordingDate) }
        set { set(metadataItem: .recordingDate, to: newValue ?? Date.distantPast) }
    }
    
    /// date needs to be in ISO8601 format yyyy-MM-dd
    var releaseDate: Date? {
        get { date(for: .releaseDate) }
        set { set(metadataItem: .releaseDate, to: newValue ?? Date.distantPast) }
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
    
    var taggingTime: Date? {
        get { date(for: .taggingTime) }
        set { set(metadataItem: .taggingTime, to: newValue ?? Date.distantPast) }
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
    
    var year: Date? {
        get { date(for: .year) }
        set { set(metadataItem: .year, to: newValue ?? Date.distantPast) }
    }    
}

