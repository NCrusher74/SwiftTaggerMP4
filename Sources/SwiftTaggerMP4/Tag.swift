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

extension Tag {
    
    var acknowledgment: String? {
        get {
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                filteredByIdentifier: Metadata.acknowledgment.identifier)
            if let item = items.first {
                return item.stringValue
            } else {
                return nil
            }
        }
        set {
            let item = AVMutableMetadataItem()
            item.keySpace = Metadata.acknowledgment.keySpace
            item.key = Metadata.acknowledgment.key as NSString
            item.value = (newValue ?? "") as NSString
            self.metadata.append(item)
        }
    }
    
    var album: String? {
        get {
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                filteredByIdentifier: Metadata.album.identifier)
            if let item = items.first {
                return item.stringValue
            } else {
                return nil
            }
        }
        set {
            let item = AVMutableMetadataItem()
            item.keySpace = Metadata.album.keySpace
            item.key = Metadata.album.key as NSString
            item.value = (newValue ?? "") as NSString
            self.metadata.append(item)
        }
    }
    
    var albumArtist: String? {
        get {
            let items = AVMetadataItem.metadataItems(
                from: self.metadata,
                filteredByIdentifier: Metadata.albumArtist.identifier)
            if let item = items.first {
                return item.stringValue
            } else {
                return nil
            }
        }
        set {
            let item = AVMutableMetadataItem()
            item.keySpace = Metadata.albumArtist.keySpace
            item.key = Metadata.albumArtist.key as NSString
            item.value = (newValue ?? "") as NSString
            self.metadata.append(item)
        }
    }
}

//@available(OSX 10.12, *)
//extension Tag {
//
//    private func string(for identifier: MetadataIdentifier) -> String? {
//        if identifier.keyFormat == .string {
//            let key = identifier.rawValue
//            let items = AVMetadataItem.metadataItems(
//                from: self.metadata,
//                withKey: key,
//                keySpace: identifier.keyspace)
//            if let item = items.first {
//                return item.stringValue
//            } else {
//                return nil
//            }
//        } else {
//            return nil
//        }
//    }
//
//    private func stringFromData(for identifier: MetadataIdentifier) -> String? {
//        if identifier.keyFormat == .data && identifier.rawValue == .init("purl") {
//            let key = identifier.rawValue
//            let items = AVMetadataItem.metadataItems(
//                from: self.metadata,
//                withKey: key,
//                keySpace: identifier.keyspace)
//            if let item = items.first {
//                return String(decoding: item.dataValue!, as: UTF8.self)
//            } else {
//                return nil
//            }
//        } else {
//            return nil
//        }
//    }
//
//    private mutating func set(_ identifier: MetadataIdentifier, to string: NSString) {
//        if identifier.keyFormat == .string {
//            let metadataItem = AVMutableMetadataItem()
//            metadataItem.keySpace = identifier.keyspace
//            metadataItem.key = AVMetadataKey(rawValue: identifier.rawValue) as NSString
//            metadataItem.value = string
//            self.metadata.append(metadataItem)
//        } else {
//            return
//        }
//    }
//
//    private func integer(for identifier: MetadataIdentifier) -> Int? {
//        if identifier.keyFormat == .integer {
//            let key = identifier.rawValue
//            let items = AVMetadataItem.metadataItems(
//                from: self.metadata,
//                withKey: key,
//                keySpace: identifier.keyspace)
//            if let item = items.first {
//                return item.numberValue as? Int
//            } else {
//                return nil
//            }
//        } else {
//            return nil
//        }
//    }
//
//    private func intArrayFromData(for identifier: MetadataIdentifier) -> [Int]? {
//        if identifier.keyFormat == .data &&
//            (identifier == .trackNumber || identifier == .discNumber) {
//            let key = identifier.rawValue
//            let items = AVMetadataItem.metadataItems(
//                from: self.metadata,
//                withKey: key,
//                keySpace: identifier.keyspace)
//            if let item = items.first {
//                #warning("this doesn't work yet")
//                // disc data is 0 0 0 3 0 4
//                // track data is 0 0 0 1 0 2 0 0
//                // need to figure out how to predict and parse that
//                let itemArray = NSArray(object: item.dataValue ?? [])
//                return itemArray as? [Int]
//            } else {
//                return nil
//            }
//        } else {
//            return nil
//        }
//    }
//
//    private mutating func set(_ identifier: MetadataIdentifier, to integer: NSNumber) {
//        if identifier.keyFormat == .integer {
//            let metadataItem = AVMutableMetadataItem()
//            metadataItem.keySpace = identifier.keyspace
//            metadataItem.key = AVMetadataKey(rawValue: identifier.rawValue) as NSString
//            metadataItem.value = integer
//            self.metadata.append(metadataItem)
//        } else {
//            return
//        }
//    }
//
//    private func boolean(for identifier: MetadataIdentifier) -> Bool? {
//        if identifier.keyFormat == .boolean {
//            let key = identifier.rawValue
//            let items = AVMetadataItem.metadataItems(
//                from: self.metadata,
//                withKey: key,
//                keySpace: identifier.keyspace)
//            if let item = items.first {
//                return item.numberValue as? Bool
//            } else {
//                return nil
//            }
//        } else {
//            return nil
//        }
//    }
//
//    private func set(_ identifier: MetadataIdentifier, to value: Bool) {
//        if identifier.keyFormat == .boolean {
//            let metadataItem = AVMutableMetadataItem()
//            metadataItem.keySpace = identifier.keyspace
//            metadataItem.key = identifier.rawValue as NSString
//            var valueInt: Int = 0
//            switch value {
//                case true: valueInt = 1
//                case false: valueInt = 0
//            }
//            metadataItem.value = valueInt as NSNumber
//        } else {
//            return
//        }
//    }
    
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
    
//    private mutating func set(_ identifier: MetadataIdentifier, to intArray: [Int]) {
//        if identifier.keyFormat == .data && (identifier == .trackNumber || identifier == .discNumber) {
//            let metadataItem = AVMutableMetadataItem()
//            metadataItem.keySpace = identifier.keyspace
//            metadataItem.key = identifier.rawValue as NSString
//            var dataArray = Data()
//            for int in intArray {
//                dataArray.append(int.truncatedUInt32.bigEndianData)
//            }
//            metadataItem.value = dataArray as NSData
//            self.metadata.append(metadataItem)
//        }
//    }
//
//    private func date(for identifier: MetadataIdentifier) -> Date? {
//        if identifier.keyFormat == .date {
//            let key = identifier.rawValue
//            let items = AVMetadataItem.metadataItems(
//                from: self.metadata,
//                withKey: key,
//                keySpace: .iTunes)
//            if let item = items.first {
//                if let itemDate = item.dateValue {
//                    return itemDate // item can be coerced to date
//                } else {
//                    // try to parse a date out of a string in ISO8602 format
//                    if let itemDateAsString = item.stringValue {
//                        let date = ISO8601DateFormatter().date(from: itemDateAsString)!
//                        return date
//                    } else {
//                        return nil // if it can't be formatted, scrap it
//                    }
//                }
//            } else {
//                return nil
//            }
//        } else {
//            return nil
//        }
//    }
//
//    private mutating func set(_ identifier: MetadataIdentifier, to date: Date) {
//        if identifier.keyFormat == .date {
//            let metadataItem = AVMutableMetadataItem()
//            metadataItem.keySpace = .iTunes
//            metadataItem.key = identifier.rawValue as NSString
//            metadataItem.value = date as NSDate
//            metadata.append(metadataItem)
//
//        }
//    }
    
