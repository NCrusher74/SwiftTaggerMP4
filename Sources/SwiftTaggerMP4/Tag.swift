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
    
    public init(readFrom file: Mp4File) {
        let asset = file.asset
        let metadata = asset.metadata(forFormat: .iTunesMetadata)
        self.metadata = metadata
    }
}

@available(OSX 10.12, *)
extension Tag {
    
    private func string(for identifier: MetadataIdentifier) -> String? {
        if identifier.keyFormat == .string {
            let key = identifier.rawValue
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: key,
                keySpace: identifier.keyspace)
            if let item = items.first {
                return item.stringValue
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private func stringFromData(for identifier: MetadataIdentifier) -> String? {
        if identifier.keyFormat == .data && identifier.rawValue == .init("purl") {
            let key = identifier.rawValue
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: key,
                keySpace: identifier.keyspace)
            if let item = items.first {
                return String(decoding: item.dataValue!, as: UTF8.self)
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private mutating func set(_ identifier: MetadataIdentifier, to string: String) {
        if identifier.keyFormat == .string {
            let metadataItem = AVMutableMetadataItem()
            metadataItem.keySpace = identifier.keyspace
            metadataItem.key = identifier.rawValue as NSString
            metadataItem.value = string as NSString
            self.metadata.append(metadataItem)
        } else {
            return
        }
    }
    
    private func integer(for identifier: MetadataIdentifier) -> Int? {
        if identifier.keyFormat == .integer {
            let key = identifier.rawValue
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: key,
                keySpace: identifier.keyspace)
            if let item = items.first {
                return item.numberValue as? Int
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private func intArrayFromData(for identifier: MetadataIdentifier) -> [Int]? {
        if identifier.keyFormat == .data &&
            (identifier == .trackNumber || identifier == .discNumber) {
            let key = identifier.rawValue
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: key,
                keySpace: identifier.keyspace)
            if let item = items.first {
                #warning("this doesn't work yet")
                // disc data is 0 0 0 3 0 4
                // track data is 0 0 0 1 0 2 0 0
                // need to figure out how to predict and parse that
                let itemArray = NSArray(object: item.dataValue ?? [])
                return itemArray as? [Int]
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private mutating func set(_ identifier: MetadataIdentifier, to integer: Int) {
        if identifier.keyFormat == .integer {
            let metadataItem = AVMutableMetadataItem()
            metadataItem.keySpace = identifier.keyspace
            metadataItem.key = identifier.rawValue as NSString
            metadataItem.value = integer as NSNumber
            self.metadata.append(metadataItem)
        } else {
            return
        }
    }
    
    private func boolean(for identifier: MetadataIdentifier) -> Bool? {
        if identifier.keyFormat == .boolean {
            let key = identifier.rawValue
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: key,
                keySpace: identifier.keyspace)
            if let item = items.first {
                return item.numberValue as? Bool
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private func set(_ identifier: MetadataIdentifier, to value: Bool) {
        if identifier.keyFormat == .boolean {
            let metadataItem = AVMutableMetadataItem()
            metadataItem.keySpace = identifier.keyspace
            metadataItem.key = identifier.rawValue as NSString
            var valueInt: Int = 0
            switch value {
                case true: valueInt = 1
                case false: valueInt = 0
            }
            metadataItem.value = valueInt as NSNumber
        } else {
            return
        }
    }
    
    //    private func image(for identifier: MetadataIdentifier) -> NSImage? {
    //        if identifier.keyFormat == .image {
    //            let key = identifier.key
    //            let items = AVMetadataItem.metadataItems(
    //                from: self.metadata,
    //                withKey: key,
    //                keySpace: .iTunes)
    //            if let item = items.first {
    //                guard let itemData = item.dataValue else { return nil }
    //                return NSImage(data: itemData)
    //            } else {
    //                return nil
    //            }
    //        } else {
    //            return nil
    //        }
    //    }
    
    //    private mutating func set(_ identifier: MetadataIdentifier, to imageData: NSImage) {
    //        if identifier.keyFormat == .image {
    //            let metadataItem = AVMutableMetadataItem()
    //            metadataItem.keySpace = .iTunes
    //            metadataItem.key = identifier.key as NSString
    //            metadataItem.value = imageData
    //            self.metadata.append(metadataItem)
    //        }
    //    }
    
    private mutating func set(_ identifier: MetadataIdentifier, to intArray: [Int]) {
        if identifier.keyFormat == .data && (identifier == .trackNumber || identifier == .discNumber) {
            let metadataItem = AVMutableMetadataItem()
            metadataItem.keySpace = identifier.keyspace
            metadataItem.key = identifier.rawValue as NSString
            var dataArray = Data()
            for int in intArray {
                dataArray.append(int.truncatedUInt32.bigEndianData)
            }
            metadataItem.value = dataArray as NSData
            self.metadata.append(metadataItem)
        }
    }
    
    private func date(for identifier: MetadataIdentifier) -> Date? {
        if identifier.keyFormat == .date {
            let key = identifier.rawValue
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                withKey: key,
                keySpace: .iTunes)
            if let item = items.first {
                if let itemDate = item.dateValue {
                    return itemDate // item can be coerced to date
                } else {
                    // try to parse a date out of a string in ISO8602 format
                    if let itemDateAsString = item.stringValue {
                        let date = ISO8601DateFormatter().date(from: itemDateAsString)!
                        return date
                    } else {
                        return nil // if it can't be formatted, scrap it
                    }
                }
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private mutating func set(_ identifier: MetadataIdentifier, to date: Date) {
        if identifier.keyFormat == .date {
            let metadataItem = AVMutableMetadataItem()
            metadataItem.keySpace = .iTunes
            metadataItem.key = identifier.rawValue as NSString
            metadataItem.value = date as NSDate
            metadata.append(metadataItem)
            
        }
    }
    
    // MARK: Getter-Setters
    public var acknowledgment: String? {
        get { if let item = string(for: .acknowledgment) { return item }
        else { return nil } }
        set { set(.acknowledgment, to: newValue ?? "") }
    }
    
    public var album: String? {
        get { if let item = string(for: .album) { return item }
        else { return nil } }
        set { set(.album, to: newValue ?? "") }
    }
    
    public var albumSort: String? {
        get { if let item = string(for: .albumSort) { return item }
        else { return nil } }
        set { set(.albumSort, to: newValue ?? "") }
    }
    
    public var albumArtist: String? {
        get { if let item = string(for: .albumArtist) { return item }
        else { return nil } }
        set { set(.albumArtist, to: newValue ?? "") }
    }
    
    public var albumArtistSort: String? {
        get { if let item = string(for: .albumArtistSort) { return item }
        else { return nil } }
        set { set(.albumArtistSort, to: newValue ?? "") }
    }
    
    public var arranger: String? {
        get { if let item = string(for: .arranger) { return item }
        else { return nil } }
        set { set(.arranger, to: newValue ?? "") }
    }
    
    public var artDirector: String? {
        get { if let item = string(for: .artDirector) { return item }
        else { return nil } }
        set { set(.artDirector, to: newValue ?? "") }
    }
    
    public var artist: String? {
        get { if let item = string(for: .artist) { return item }
        else { return nil } }
        set { set(.artist, to: newValue ?? "") }
    }
    
    public var artistSort: String? {
        get { if let item = string(for: .artistSort ) { return item }
        else { return nil } }
        set { set(.artistSort, to: newValue ?? "") }
    }
    
    public var artistWebpage: String? {
        get { if let item = string(for: .artistWebpage) { return item }
        else { return nil } }
        set { set(.artistWebpage, to: newValue ?? "") }
    }
    
    public var audioFileWebpage: String? {
        get { if let item = string(for: .audioFileWebpage) { return item }
        else { return nil } }
        set { set(.audioFileWebpage, to: newValue ?? "") }
    }
    
    public var audioSourceWebpage: String? {
        get { if let item = string(for: .audioSourceWebpage) { return item }
        else { return nil } }
        set { set(.audioSourceWebpage, to: newValue ?? "") }
    }
    
    public var bpm: Int? {
        get { if let item = integer(for: .bpm) { return item }
        else { return nil } }
        set { set(.bpm, to: newValue ?? 0) }
    }
    
    public var comments: String? {
        get { if let item = string(for: .comments) { return item }
        else { return nil } }
        set { set(.comments, to: newValue ?? "") }
    }
    
    public var compilation: Bool? {
        get { if let item = boolean(for: .compilation) { return item }
        else { return nil } }
        set { set(.compilation, to: newValue ?? false) }
    }
    
    public var composer: String? {
        get { if let item = string(for: .composer) { return item }
        else { return nil } }
        set { set(.composer, to: newValue ?? "") }
    }
    
    public var composerSort: String? {
        get { if let item = string(for: .composerSort) { return item }
        else { return nil } }
        set { set(.composerSort, to: newValue ?? "") }
    }
    
    public var conductor: String? {
        get { if let item = string(for: .conductor) { return item }
        else { return nil } }
        set { set(.conductor, to: newValue ?? "") }
    }
    
    public var contentAdvisory: ContentAdvisory? {
        get {
            if let item = string(for: .contentAdvisory) {
                if let contentAdvisory = ContentAdvisory(rawValue: item) {
                    return contentAdvisory
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set { set(.contentAdvisory, to: newValue?.rawValue ?? "") }
    }
    
    public var contentRating: ContentRating? {
        get {
            if let item = integer(for: .contentRating) {
                if let contentRating = ContentRating(rawValue: item) {
                    return contentRating
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set { set(.contentRating, to: newValue?.rawValue ?? 0) }
    }
    
    public var copyright: String? {
        get { if let item = string(for: .copyright) { return item }
        else { return nil } }
        set { set(.copyright, to: newValue ?? "") }
    }
    
    public var copyrightWebpage: String? {
        get { if let item = string(for: .copyrightWebpage) { return item }
        else { return nil } }
        set { set(.copyrightWebpage, to: newValue ?? "") }
    }
    
    //    public var coverArt: NSImage? {
    //        get { if let item = image(for: .coverArt) { return item }
    //        else { return nil } }
    //        set { set(.coverArt, to: newValue!) }
    //    }
    
    public var description: String? {
        get { if let item = string(for: .description) { return item }
        else { return nil } }
        set { set(.description, to: newValue ?? "") }
    }
    
    public var director: String? {
        get { if let item = string(for: .director) { return item }
        else { return nil } }
        set { set(.director, to: newValue ?? "") }
    }
    
    public var discNumber: [Int]? {
        get {
            if let item = intArrayFromData(for: .discNumber)
            { return item }
            else { return nil } }
        set { set(.discNumber, to: newValue ?? []) }
    }
    
    public var encodedBy: String? {
        get { if let item = string(for: .encodedBy) { return item }
        else { return nil } }
        set { set(.encodedBy, to: newValue ?? "") }
    }
    
    public var encodingTool: String? {
        get { if let item = string(for: .encodingTool) { return item }
        else { return nil } }
        set { set(.encodingTool, to: newValue ?? "") }
    }
    
    public var execProducer: String? {
        get { if let item = string(for: .executiveProducer) { return item }
        else { return nil } }
        set { set(.executiveProducer, to: newValue ?? "") }
    }
    
    public var fileType: FileType? {
        get {
            if let item = string(for: .fileType) {
                if let fileType = FileType(rawValue: item) {
                    return fileType
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set { set(.fileType, to: newValue?.rawValue ?? "") }
    }
    
    public var genreID: Genres? {
        get {
            if let item = integer(for: .genreID) {
                if let genreID = Genres(rawValue: item) {
                    return genreID
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set { set(.genreID, to: newValue?.rawValue ?? 0) }
    }
    
    public var genre: String? {
        get { if let item = string(for: .genre) { return item }
        else { return nil } }
        set { set(.genre, to: newValue ?? "") }
    }
    
    public var grouping: String? {
        get { if let item = string(for: .grouping) { return item }
        else { return nil } }
        set { set(.grouping, to: newValue ?? "") }
    }
    
    public var isrc: Int? {
        get { if let item = integer(for: .isrc) { return item }
        else { return nil } }
        set { set(.isrc, to: newValue ?? 0) }
    }
    
    public var initialKey: KeySignature? {
        get {
            if let item = string(for: .initialKey) {
                if let keySignature = KeySignature(rawValue: item) {
                    return keySignature
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set { set(.initialKey, to: newValue?.rawValue ?? "") }
    }
    
    public var language: ISO6392Codes? {
        get {
            if let item = string(for: .language) {
                if let language = ISO6392Codes(rawValue: item) {
                    return language
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set { set(.language, to: newValue?.rawValue ?? "") }
    }
    
    public var linerNotes: String? {
        get { if let item = string(for: .linerNotes) { return item }
        else { return nil } }
        set { set(.linerNotes, to: newValue ?? "") }
    }
    
    public var longDescription: String? {
        get { if let item = string(for: .longDescription) { return item }
        else { return nil } }
        set { set(.longDescription, to: newValue ?? "") }
    }
    
    public var lyricist: String? {
        get { if let item = string(for: .lyricist) { return item }
        else { return nil } }
        set { set(.lyricist, to: newValue ?? "") }
    }
    
    public var lyrics: String? {
        get { if let item = string(for: .lyrics) { return item }
        else { return nil } }
        set { set(.lyrics, to: newValue ?? "") }
    }
    
    public var mediaKind: Int? {
        get { if let item = integer(for: .mediaKind) { return item }
        else { return nil } }
        set { set(.mediaKind, to: newValue ?? 0) }
    }
    
    public var mood: String? {
        get { if let item = string(for: .mood) { return item }
        else { return nil } }
        set { set(.mood, to: newValue ?? "") }
    }
    
    public var totalMovements: Int? {
        get { if let item = integer(for: .movementCount) { return item }
        else { return nil } }
        set { set(.movementCount, to: newValue ?? 0) }
    }
    
    public var movementNumber: Int? {
        get { if let item = integer(for: .movementNumber) { return item }
        else { return nil } }
        set { set(.movementNumber, to: newValue ?? 0) }
    }
    
    public var movementName: String? {
        get { if let item = string(for: .movementName) { return item }
        else { return nil } }
        set { set(.movementName, to: newValue ?? "") }
    }
    
    public var narrator: String? {
        get { if let item = string(for: .narrator) { return item }
        else { return nil } }
        set { set(.narrator, to: newValue ?? "") }
    }
    
    public var onlineExtras: String? {
        get { if let item = string(for: .onlineExtras) { return item }
        else { return nil } }
        set { set(.onlineExtras, to: newValue ?? "") }
    }
    
    public var originalAlbum: String? {
        get { if let item = string(for: .originalAlbum) { return item }
        else { return nil } }
        set { set(.originalAlbum, to: newValue ?? "") }
    }
    
    public var originalArtist: String? {
        get { if let item = string(for: .originalArtist) { return item }
        else { return nil } }
        set { set(.originalArtist, to: newValue ?? "") }
    }
    
    public var originalFilename: String? {
        get { if let item = string(for: .originalFilename) { return item }
        else { return nil } }
        set { set(.originalFilename, to: newValue ?? "") }
    }
    
    public var originalLyricist: String? {
        get { if let item = string(for: .originalLyricist) { return item }
        else { return nil } }
        set { set(.originalLyricist, to: newValue ?? "") }
    }
    
    public var originalReleaseDate: Date? {
        get { if let item = date(for: .originalReleaseDate) { return item }
        else { return nil } }
        set { set(.originalReleaseDate, to: newValue ?? Date()) }
    }
    
    public var paymentWebpage: String? {
        get { if let item = string(for: .paymentWebpage) { return item }
        else { return nil } }
        set { set(.paymentWebpage, to: newValue ?? "") }
    }
    
    public var performer: String? {
        get { if let item = string(for: .performer) { return item }
        else { return nil } }
        set { set(.performer, to: newValue ?? "") }
    }
    
    public var podcast: Bool? {
        get { if let item = boolean(for: .podcast) { return item }
        else { return nil } }
        set { set(.podcast, to: newValue ?? false) }
    }
    
    public var podcastCategory: String? {
        get { if let item = string(for: .podcastCategory) { return item }
        else { return nil } }
        set { set(.podcastCategory, to: newValue ?? "") }
    }
    
    public var podcastID: String? {
        get { if let item = string(for: .podcastID) { return item }
        else { return nil } }
        set { set(.podcastID, to: newValue ?? "") }
    }
    
    public var podcastKeywords: String? {
        get { if let item = string(for: .podcastKeywords) { return item }
        else { return nil } }
        set { set(.podcastKeywords, to: newValue ?? "") }
    }
    
    public var podcastUrl: String? {
        get { if let item = stringFromData(for: .podcastURL) { return item }
        else { return nil } }
        set { set(.podcastURL, to: newValue ?? "") }
    }
    
    public var phonogramRights: String? {
        get { if let item = string(for: .phonogramRights) { return item }
        else { return nil } }
        set { set(.phonogramRights, to: newValue ?? "") }
    }
    
    public var producer: String? {
        get { if let item = string(for: .producers) { return item }
        else { return nil } }
        set { set(.producers, to: newValue ?? "") }
    }
    
    public var publisher: String? {
        get { if let item = string(for: .publisher) { return item }
        else { return nil } }
        set { set(.publisher, to: newValue ?? "") }
    }
    
    public var publisherWebpage: String? {
        get { if let item = string(for: .publisherWebpage) { return item }
        else { return nil } }
        set { set(.publisherWebpage, to: newValue ?? "") }
    }
    
    public var purchaseDate: Date? {
        get { if let item = date(for: .purchaseDate) { return item }
        else { return nil } }
        set { set(.purchaseDate, to: newValue ?? Date()) }
    }
    
    public var radioStation: String? {
        get { if let item = string(for: .radioStation) { return item }
        else { return nil } }
        set { set(.radioStation, to: newValue ?? "") }
    }
    
    public var radioStationOwner: String? {
        get { if let item = string(for: .radioStationOwner) { return item }
        else { return nil } }
        set { set(.radioStationOwner, to: newValue ?? "") }
    }
    
    public var radioStationWebpage: String? {
        get { if let item = string(for: .radioStationWebpage) { return item }
        else { return nil } }
        set { set(.radioStationWebpage, to: newValue ?? "") }
    }
    
    public var recordCompany: String? {
        get { if let item = string(for: .recordCompany) { return item }
        else { return nil } }
        set { set(.recordCompany, to: newValue ?? "") }
    }
    
    public var releaseDate: Date? {
        get { if let item = date(for: .releaseDate) { return item }
        else { return nil } }
        set { set(.releaseDate, to: newValue ?? Date()) }
    }
    
    public var seriesDescription: String? {
        get { if let item = string(for: .seriesDescription) { return item }
        else { return nil } }
        set { set(.seriesDescription, to: newValue ?? "") }
    }
    
    public var series: String? {
        get { if let item = string(for: .series) { return item }
        else { return nil } }
        set { set(.series, to: newValue ?? "") }
    }
    
    public var seriesSort: String? {
        get { if let item = string(for: .seriesSort) { return item }
        else { return nil } }
        set { set(.seriesSort, to: newValue ?? "") }
    }
    
    public var setSubtitle: String? {
        get { if let item = string(for: .setSubtitle) { return item }
        else { return nil } }
        set { set(.setSubtitle, to: newValue ?? "") }
    }
    
    public var soloist: String? {
        get { if let item = string(for: .soloist) { return item }
        else { return nil } }
        set { set(.soloist, to: newValue ?? "") }
    }
    
    public var songDescription: String? {
        get { if let item = string(for: .songDescription) { return item }
        else { return nil } }
        set { set(.songDescription, to: newValue ?? "") }
    }
    
    public var soundEngineer: String? {
        get { if let item = string(for: .soundEngineer) { return item }
        else { return nil } }
        set { set(.soundEngineer, to: newValue ?? "") }
    }
    
    public var sourceCredit: String? {
        get { if let item = string(for: .sourceCredit) { return item }
        else { return nil } }
        set { set(.sourceCredit, to: newValue ?? "") }
    }
    
    public var taggingTime: Date? {
        get { if let item = date(for: .taggingTime) { return item }
        else { return nil } }
        set { set(.taggingTime, to: newValue ?? Date()) }
    }
    
    public var thanks: String? {
        get { if let item = string(for: .thanks) { return item }
        else { return nil } }
        set { set(.thanks, to: newValue ?? "") }
    }
    
    public var title: String? {
        get { if let item = string(for: .title) { return item }
        else { return nil } }
        set { set(.title, to: newValue ?? "") }
    }
    
    public var titleSort: String? {
        get { if let item = string(for: .titleSort) { return item }
        else { return nil } }
        set { set(.titleSort, to: newValue ?? "") }
    }
    
    public var trackNumber: [Int]? {
        get { if let item = intArrayFromData(for: .trackNumber) { return item }
        else { return nil } }
        set { set(.trackNumber, to: newValue ?? []) }
    }
    
    public var subtitle: String? {
        get { if let item = string(for: .subtitle) { return item }
        else { return nil } }
        set { set(.subtitle, to: newValue ?? "") }
    }
    
    public var episodeTitle: String? {
        get { if let item = string(for: .episodeTitle) { return item }
        else { return nil } }
        set { set(.episodeTitle, to: newValue ?? "") }
    }
    
    public var network: String? {
        get { if let item = string(for: .network) { return item }
        else { return nil } }
        set { set(.network, to: newValue ?? "") }
    }
    
    public var work: String? {
        get { if let item = string(for: .workName) { return item }
        else { return nil } }
        set { set(.workName, to: newValue ?? "") }
    }
    
    public var episodeNumber: Int? {
        get { if let item = integer(for: .episodeNumber) { return item }
        else { return nil } }
        set { set(.episodeNumber, to: newValue ?? 0) }
    }
    
    public var season: Int? {
        get { if let item = integer(for: .season) { return item }
        else { return nil } }
        set { set(.season, to: newValue ?? 0) }
    }
    
    public var year: Date? {
        get { if let item = date(for: .year) { return item }
        else { return nil } }
        set { set(.year, to: newValue ?? Date()) }
    }
}
