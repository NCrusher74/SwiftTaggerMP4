//
//  Tag.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 5/2/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import SwiftMp4MetadataParser
import Cocoa

@available(OSX 10.13, *)
/// A structure containing the metadata accessors for an mp4 file
public struct Tag {
    public var metadata: [(identifier: AtomIdentifier, value: Any)]
    internal var parser: SwiftMp4MetadataParser.Mp4File
    
    /// Initializes a `Tag` instance containing the metadata and chapter data accessors of an mp4 file
    /// - Parameter file: The mp4 file being parsed
    /// - Throws: caller will decide how errors are handled
    public init(from file: Mp4File) throws {
        let parser = try SwiftMp4MetadataParser.Mp4File(location: file.location)
        self.parser = parser
        let tags = try parser.listMetadataTags()
        var entries = [(AtomIdentifier, Any)]()
        for tag in tags {
            if let identifier = AtomIdentifier(rawValue: tag.identifier) {
                let entry = (identifier, tag.value)
                entries.append(entry)
            }
        }
        self.metadata = entries
    }
    
    // MARK: - A
    public var acknowledgment: String? {
        get {
            do {
                return try parser.get(.acknowledgment)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.acknowledgment.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.acknowledgment,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.acknowledgment.rawValue)")
                }
            } else {
                do {
                    try parser.set(.acknowledgment,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.acknowledgment.rawValue)")
                }
            }
        }
    }

    public var album: String? {
        get {
            do {
                return try parser.get(.album)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.album.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.album,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.album.rawValue)")
                }
            } else {
                do {
                    try parser.set(.album,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.album.rawValue)")
                }
            }
        }
    }

    public var albumArtist: String? {
        get {
            do {
                return try parser.get(.albumArtist)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.albumArtist.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.albumArtist,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.albumArtist.rawValue)")
                }
            } else {
                do {
                    try parser.set(.albumArtist,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.albumArtist.rawValue)")
                }
            }
        }
    }

    public var albumArtistSort: String? {
        get {
            do {
                return try parser.get(.albumArtistSort)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.albumArtistSort.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.albumArtistSort,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.albumArtistSort.rawValue)")
                }
            } else {
                do {
                    try parser.set(.albumArtistSort,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.albumArtistSort.rawValue)")
                }
            }
        }
    }

    public var albumID: Int? {
        get {
            do {
                return try parser.get(.albumID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.albumID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.albumID,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.albumID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.albumID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.albumID.rawValue)")
                }
            }
        }
    }
    
    public var albumSort: String? {
        get {
            do {
                return try parser.get(.albumSort)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.albumSort.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.albumSort,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.albumSort.rawValue)")
                }
            } else {
                do {
                    try parser.set(.albumSort,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.albumSort.rawValue)")
                }
            }
        }
    }

    public var appleStoreCountryID: Int? {
        get {
            do {
                return try parser.get(.appleStoreCountryID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.appleStoreCountryID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.appleStoreCountryID,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.appleStoreCountryID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.appleStoreCountryID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.appleStoreCountryID.rawValue)")
                }
            }
        }
    }

    public var arranger: String? {
        get {
            do {
                return try parser.get(.arranger)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.arranger.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.arranger,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.arranger.rawValue)")
                }
            } else {
                do {
                    try parser.set(.arranger,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.arranger.rawValue)")
                }
            }
        }
    }

    public var arrangerKeywords: [String]? {
        get {
            do {
                if try parser.get(.arrangerKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.arrangerKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.arrangerKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.arrangerKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                }
            }
        }
    }

    public var artDirector: String? {
        get {
            do {
                return try parser.get(.artDirector)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artDirector.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artDirector,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artDirector.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artDirector,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artDirector.rawValue)")
                }
            }
        }
    }
    
    public var artist: String? {
        get {
            do {
                return try parser.get(.artist)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artist.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artist,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artist.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artist,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artist.rawValue)")
                }
            }
        }
    }

    public var artistID: Int? {
        get {
            do {
                return try parser.get(.artistID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artistID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artistID,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artist.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artistID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artistID.rawValue)")
                }
            }
        }
    }
    
    public var artistKeywords: [String]? {
        get {
            do {
                if try parser.get(.artistKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.artistKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artistKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artistKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                }
            }
        }
    }
    
    public var artistSort: String? {
        get {
            do {
                return try parser.get(.artistSort)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artistSort.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artistSort,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artistSort.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artistSort,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artistSort.rawValue)")
                }
            }
        }
    }

    public var artistUrl: String? {
        get {
            do {
                return try parser.get(.artistUrl)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artistUrl.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artistUrl,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artistUrl.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artistUrl,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artistUrl.rawValue)")
                }
            }
        }
    }

    public var audioFileWebpage: String? {
        get {
            if let string = self["WOAF"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["WOAF"] = new
            } else {
                self["WOAF"] = nil
            }
        }
    }
    
    public var audioSourceWebpage: String? {
        get {
            if let string = self["WOAS"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["WOAS"] = new
            } else {
                self["WOAS"] = nil
            }
        }
    }
    

    // MARK: - B-C
    public var bpm: Int? {
        get {
            do {
                return try parser.get(.bpm)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.bpm.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.bpm,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.bpm.rawValue)")
                }
            } else {
                do {
                    try parser.set(.bpm, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.bpm.rawValue)")
                }
            }
        }
    }
    
    public var category: String? {
        get {
            do {
                return try parser.get(.category)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.category.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.category,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.category.rawValue)")
                }
            } else {
                do {
                    try parser.set(.category,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.category.rawValue)")
                }
            }
        }
    }
    
    public var comment: String? {
        get {
            do {
                return try parser.get(.comment)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.comment.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.comment,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.comment.rawValue)")
                }
            } else {
                do {
                    try parser.set(.comment,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.comment.rawValue)")
                }
            }
        }
    }
    
    public var compilation: Bool? {
        get {
            do {
                let value = try parser.get(.compilation)
                if value == 1 {
                    return true
                } else if value == 0 {
                    return false
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.compilation.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                var intValue = Int()
                if new == false {
                    intValue = 0
                } else {
                    intValue = 1
                }
                
                do {
                    try parser.set(.compilation,
                                   intValue: intValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.compilation.rawValue)")
                }
            } else {
                do {
                    try parser.set(.compilation,
                                   intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.compilation.rawValue)")
                }
            }
        }
    }
    
    public var composer: String? {
        get {
            do {
                return try parser.get(.composer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.composer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.composer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.composer.rawValue)")
                }
            } else {
                do {
                    try parser.set(.composer,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.composer.rawValue)")
                }
            }
        }
    }
    
    public var composerID: Int? {
        get {
            do {
                return try parser.get(.composerID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.composerID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.composerID,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.composerID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.composerID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.composerID.rawValue)")
                }
            }
        }
    }
    
    public var composerKeywords: [String]? {
        get {
            do {
                if try parser.get(.composerKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.composerKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.composerKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.composerKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                }
            }
        }
    }
    
    public var composerSort: String? {
        get {
            do {
                return try parser.get(.composerSort)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.composerSort.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.composerSort,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.composerSort.rawValue)")
                }
            } else {
                do {
                    try parser.set(.composerSort,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.composerSort.rawValue)")
                }
            }
        }
    }
    
    public var conductor: String? {
        get {
            do {
                return try parser.get(.conductor)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.conductor.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.conductor,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.conductor.rawValue)")
                }
            } else {
                do {
                    try parser.set(.conductor,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.conductor.rawValue)")
                }
            }
        }
    }
    
    public var conductorID: Int? {
        get {
            do {
                return try parser.get(.conductorID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.conductorID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.conductorID,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.conductorID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.conductorID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.conductorID.rawValue)")
                }
            }
        }
    }
    
    public var contentAdvisory: ContentAdvisory? {
        get {
            if let string = self["iTunEXTC"] {
                if let key = ContentAdvisory(rawValue: string) {
                    return key
                } else {
                    return .unknown
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["iTunEXTC"] = new.rawValue
            } else {
                self["iTunEXTC"] = nil
            }
        }
    }

    public var copyright: String? {
        get {
            do {
                return try parser.get(.copyright)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.copyright.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.copyright,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.copyright.rawValue)")
                }
            } else {
                do {
                    try parser.set(.copyright,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.copyright.rawValue)")
                }
            }
        }
    }
    
    public var copyrightStatement: String? {
        get {
            do {
                return try parser.get(.copyrightStatement)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.copyrightStatement.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.copyrightStatement,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.copyrightStatement.rawValue)")
                }
            } else {
                do {
                    try parser.set(.copyrightStatement,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.copyrightStatement.rawValue)")
                }
            }
        }
    }
   
    public var copyrightWebpage: String? {
        get {
            if let string = self["WCOP"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["WCOP"] = new
            } else {
                self["WCOP"] = nil
            }
        }
    }
    
    public var coverArt: NSImage? {
        get {
            do {
                return try parser.getCoverArt()
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.coverArt.rawValue)")
                return nil
            }
        }
    }
    
    public func setCoverArt(imageLocation: URL) throws {
        try parser.set(coverImage: imageLocation)
    }
    
    public func removeCoverArt() throws {
        try parser.removeCoverArt()
    }

    public var customGenre: String? {
        get {
            do {
                return try parser.get(.customGenre)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.customGenre.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.customGenre,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.customGenre.rawValue)")
                }
            } else {
                do {
                    try parser.set(.customGenre,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.customGenre.rawValue)")
                }
            }
        }
    }
    
    // MARK: - D-E
    public var description: String? {
        get {
            do {
                return try parser.get(.description)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.description.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.description,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.description.rawValue)")
                }
            } else {
                do {
                    try parser.set(.description,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.description.rawValue)")
                }
            }
        }
    }
    
    public var director: String? {
        get {
            do {
                return try parser.get(.director)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.director.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.director,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.director.rawValue)")
                }
            } else {
                do {
                    try parser.set(.director,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.director.rawValue)")
                }
            }
        }
    }
    
    public var discNumber: (disc: Int?, totalDiscs: Int?) {
        get {
            do {
                if let tuple = try parser.get(.discNumber) {
                    if let disc = tuple.part {
                        if let total = tuple.total {
                            return (disc, total)
                        } else {
                            return (disc, nil)
                        }
                    } else {
                        if let total = tuple.total {
                            return (nil, total)
                        } else {
                            return (nil, nil)
                        }
                    }
                } else {
                 return (nil, nil)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.discNumber.rawValue)")
                return (nil, nil)
            }
        }
        set {
            if newValue != (nil, nil) {
                do {
                    try parser.set(.discNumber, tupleValue: newValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.discNumber.rawValue)")
                }
            } else {
                do {
                    try parser.set(.discNumber, tupleValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.discNumber.rawValue)")
                }
            }
        }
    }

    public var editDateAndDescription1: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription1)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription1.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription1,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription1.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription1,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription1.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription2: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription2)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription2.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription2,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription2.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription2,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription2.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription3: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription3)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription3.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription3,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription3.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription3,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription3.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription4: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription4)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription4.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription4,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription4.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription4,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription4.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription5: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription5)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription5.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription5,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription5.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription5,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription5.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription6: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription6)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription6.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription6,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription6.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription6,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription6.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription7: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription7)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription7.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription7,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription7.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription7,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription7.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription8: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription8)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription8.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription8,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription8.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription8,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription8.rawValue)")
                }
            }
        }
    }
    
    public var editDateAndDescription9: String? {
        get {
            do {
                return try parser.get(.editDateAndDescription9)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.editDateAndDescription9.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.editDateAndDescription9,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.editDateAndDescription9.rawValue)")
                }
            } else {
                do {
                    try parser.set(.editDateAndDescription9,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.editDateAndDescription9.rawValue)")
                }
            }
        }
    }
    
    public var encodedBy: String? {
        get {
            do {
                return try parser.get(.encodedBy)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.encodedBy.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.encodedBy,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.encodedBy.rawValue)")
                }
            } else {
                do {
                    try parser.set(.encodedBy,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.encodedBy.rawValue)")
                }
            }
        }
    }
   
    public var encodingSettings: String? {
        get {
            if let string = self["TSSE"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TSSE"] = new
            } else {
                self["TSSE"] = nil
            }
        }
    }
    
    public var encodingTime: Date? {
        get {
            if let string = self["TDEN"] {
                let formatter = ISO8601DateFormatter()
                let date = formatter.date(from: string)
                return date
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let formatter = ISO8601DateFormatter()
                let string = formatter.string(from: new)
                self["TDEN"] = string
            } else {
                self["TDEN"] = nil
            }
        }
    }
    
    public var encodingTool: String? {
        get {
            do {
                return try parser.get(.encodingTool)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.encodingTool.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.encodingTool,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.encodingTool.rawValue)")
                }
            } else {
                do {
                    try parser.set(.encodingTool,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.encodingTool.rawValue)")
                }
            }
        }
    }
    
    public var executiveProducer: String? {
        get {
            do {
                return try parser.get(.executiveProducer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.executiveProducer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                }
            } else {
                do {
                    try parser.set(.executiveProducer,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                }
            }
        }
    }
    
    // MARK: - F-K
    public var fileType: FileType? {
        get {
            if let string = self["TFLT"] {
                if let fileType = FileType(rawValue: string) {
                    return fileType
                } else {
                    return .unknown
                }
            } else {
                return .unknown
            }
        }
        set {
            if let new = newValue {
                self["TFLT"] = new.rawValue
            } else {
                self["TFLT"] = nil
            }
        }
    }
    
    public var filmMakerUrl: String? {
        get {
            do {
                return try parser.get(.filmMakerUrl)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.filmMakerUrl.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.filmMakerUrl,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.filmMakerUrl.rawValue)")
                }
            } else {
                do {
                    try parser.set(.filmMakerUrl,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.filmMakerUrl.rawValue)")
                }
            }
        }
    }
    
    public var format: String? {
        get {
            do {
                return try parser.get(.format)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.format.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.format,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.format.rawValue)")
                }
            } else {
                do {
                    try parser.set(.format,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.format.rawValue)")
                }
            }
        }
    }
    
    public var gaplessPlayback: Bool? {
        get {
            do {
                let value = try parser.get(.gaplessPlayback)
                if value == 1 {
                    return true
                } else if value == 0 {
                    return false
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.gaplessPlayback.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                var intValue = Int()
                if new == false {
                    intValue = 0
                } else {
                    intValue = 1
                }
                
                do {
                    try parser.set(.gaplessPlayback,
                                   intValue: intValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.gaplessPlayback.rawValue)")
                }
            } else {
                do {
                    try parser.set(.gaplessPlayback,
                                   intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.gaplessPlayback.rawValue)")
                }
            }
        }
    }
    
    public var genreID: Genres? {
        get {
            do {
                if let id = try parser.get(.genreID) {
                    if let genreID = Genres(rawValue: id) {
                        return genreID
                    } else {
                        return .unknown
                    }
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.genreID.rawValue)")
                return .unknown
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.genreID,
                                   intValue: new.rawValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.genreID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.genreID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.genreID.rawValue)")
                }
            }
        }
    }
    
    public var grouping: String? {
        get {
            do {
                return try parser.get(.grouping)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.grouping.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.grouping,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.grouping.rawValue)")
                }
            } else {
                do {
                    try parser.set(.grouping,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.grouping.rawValue)")
                }
            }
        }
    }
    
    public var information: String? {
        get {
            do {
                return try parser.get(.information)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.information.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.information,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.information.rawValue)")
                }
            } else {
                do {
                    try parser.set(.information,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.information.rawValue)")
                }
            }
        }
    }
    
    public var initialKey: KeySignature? {
        get {
            if let string = self["TKEY"] {
                if let key = KeySignature(rawValue: string) {
                    return key
                } else {
                    return .unknown
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TKEY"] = new.rawValue
            } else {
                self["TKEY"] = nil
            }
        }
    }
    
    public var isrc: String? {
        get {
            do {
                return try parser.get(.isrc)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.isrc.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.isrc,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.isrc.rawValue)")
                }
            } else {
                do {
                    try parser.set(.isrc,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.isrc.rawValue)")
                }
            }
        }
    }
    
    // MARK: - L-N
    public var label: String? {
        get {
            do {
                return try parser.get(.label)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.label.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.label,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.label.rawValue)")
                }
            } else {
                do {
                    try parser.set(.label,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.label.rawValue)")
                }
            }
        }
    }
    
    public var linerNotes: String? {
        get {
            do {
                return try parser.get(.linerNotes)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.linerNotes.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.linerNotes,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.linerNotes.rawValue)")
                }
            } else {
                do {
                    try parser.set(.linerNotes,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.linerNotes.rawValue)")
                }
            }
        }
    }
    
    public var longDescription: String? {
        get {
            do {
                return try parser.get(.longDescription)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.longDescription.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.longDescription,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.longDescription.rawValue)")
                }
            } else {
                do {
                    try parser.set(.longDescription,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.longDescription.rawValue)")
                }
            }
        }
    }
    
    public var lyrics: String? {
        get {
            do {
                return try parser.get(.lyrics)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.lyrics.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.lyrics,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.lyrics.rawValue)")
                }
            } else {
                do {
                    try parser.set(.lyrics,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.lyrics.rawValue)")
                }
            }
        }
    }
    
    public var lyricist: String? {
        get {
            do {
                return try parser.get(.lyricist)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.lyricist.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.lyricist,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.lyricist.rawValue)")
                }
            } else {
                do {
                    try parser.set(.lyricist,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.lyricist.rawValue)")
                }
            }
        }
    }
    
    public var mediaType: MediaType? {
        get {
            do {
                if let id = try parser.get(.mediaType) {
                    if let mediaType = MediaType(rawValue: id) {
                        return mediaType
                    } else {
                        return .music
                    }
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.mediaType.rawValue)")
                return .music
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.mediaType,
                                   intValue: new.rawValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.mediaType.rawValue)")
                }
            } else {
                do {
                    try parser.set(.mediaType,
                                   intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.mediaType.rawValue)")
                }
            }
        }
    }

    public var mood: String? {
        get {
            if let string = self["TMOO"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TMOO"] = new
            } else {
                self["TMOO"] = nil
            }
        }
    }
    
    public var movementCount: Int? {
        get {
            do {
                return try parser.get(.movementCount)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.movementCount.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.movementCount,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.movementCount.rawValue)")
                }
            } else {
                do {
                    try parser.set(.movementCount, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.movementCount.rawValue)")
                }
            }
        }
    }
    
    public var movementName: String? {
        get {
            do {
                return try parser.get(.movementName)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.movementName.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.movementName,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.movementName.rawValue)")
                }
            } else {
                do {
                    try parser.set(.movementName,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.movementName.rawValue)")
                }
            }
        }
    }
    
    public var movementNumber: Int? {
        get {
            do {
                return try parser.get(.movementNumber)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.movementNumber.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.movementNumber,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.movementNumber.rawValue)")
                }
            } else {
                do {
                    try parser.set(.movementNumber, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.movementNumber.rawValue)")
                }
            }
        }
    }
    
    public var narrator: String? {
        get {
            do {
                return try parser.get(.narrator)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.narrator.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.narrator,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.narrator.rawValue)")
                }
            } else {
                do {
                    try parser.set(.narrator,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.narrator.rawValue)")
                }
            }
        }
    }
    
    // MARK: - O-P
    public var originalArtist: String? {
        get {
            do {
                return try parser.get(.originalArtist)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.originalArtist.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.originalArtist,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.originalArtist.rawValue)")
                }
            } else {
                do {
                    try parser.set(.originalArtist,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.originalArtist.rawValue)")
                }
            }
        }
    }
    
    public var originalAlbum: String? {
        get {
            if let string = self["TOAL"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TOAL"] = new
            } else {
                self["TOAL"] = nil
            }
        }
    }
    
    public var originalFilename: String? {
        get {
            if let string = self["TOFN"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TOFN"] = new
            } else {
                self["TOFN"] = nil
            }
        }
    }
    
    public var originalLyricist: String? {
        get {
            if let string = self["TOLY"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TOLY"] = new
            } else {
                self["TOLY"] = nil
            }
        }
    }
    
    public var originalReleaseTime: Date? {
        get {
            if let string = self["TDOR"] {
                let formatter = ISO8601DateFormatter()
                let date = formatter.date(from: string)
                return date
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let formatter = ISO8601DateFormatter()
                let string = formatter.string(from: new)
                self["TDOR"] = string
            } else {
                self["TDOR"] = nil
            }
        }
    }
    
    public var owner: String? {
        get {
            do {
                return try parser.get(.owner)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.owner.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.owner,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.owner.rawValue)")
                }
            } else {
                do {
                    try parser.set(.owner,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.owner.rawValue)")
                }
            }
        }
    }
    
    public var paymentWebpage: String? {
        get {
            if let string = self["WPAY"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["WPAY"] = new
            } else {
                self["WPAY"] = nil
            }
        }
    }
    
    public var performers: String? {
        get {
            do {
                return try parser.get(.performers)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.performers.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.performers,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.performers.rawValue)")
                }
            } else {
                do {
                    try parser.set(.performers,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.performers.rawValue)")
                }
            }
        }
    }
    
    public var playlistID: Int? {
        get {
            do {
                return try parser.get(.playlistID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.playlistID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.playlistID,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.playlistID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.playlistID, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.playlistID.rawValue)")
                }
            }
        }
    }
    
    public var podcast: Bool? {
        get {
            do {
                let value = try parser.get(.podcast)
                if value == 1 {
                    return true
                } else if value == 0 {
                    return false
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.podcast.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                var intValue = Int()
                if new == false {
                    intValue = 0
                } else {
                    intValue = 1
                }
                
                do {
                    try parser.set(.podcast,
                                   intValue: intValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.podcast.rawValue)")
                }
            } else {
                do {
                    try parser.set(.podcast,
                                   intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.podcast.rawValue)")
                }
            }
        }
    }
    
    public var podcastID: String? {
        get {
            do {
                return try parser.get(.podcastID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.podcastID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.podcastID,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.podcastID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.podcastID,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.podcastID.rawValue)")
                }
            }
        }
    }
    
    public var podcastKeywords: [String]? {
        get {
            do {
                if try parser.get(.keywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.keywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.keywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.keywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.keywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.keywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.keywords.rawValue)")
                }
            }
        }
    }
    
    public var podcastUrl: String? {
        get {
            do {
                return try parser.get(.purchaseUrl)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.podcastUrl.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.purchaseUrl,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.podcastUrl.rawValue)")
                }
            } else {
                do {
                    try parser.set(.purchaseUrl,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.podcastUrl.rawValue)")
                }
            }
        }
    }
    
    public var predefinedGenre: Genres? {
        get {
            do {
                if let nameString = try parser.get(.predefinedGenre) {
                    if let genreByName = Genres(genreName: nameString) {
                        return genreByName
                    } else {
                        return .unknown
                    }
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.predefinedGenre.rawValue)")
                return .unknown
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.predefinedGenre,
                                   stringValue: new.predefinedGenres ?? "unknown",
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.predefinedGenre.rawValue)")
                }
            } else {
                do {
                    try parser.set(.predefinedGenre,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.predefinedGenre.rawValue)")
                }
            }
        }
    }
    
    public var producedNotice: String? {
        get {
            if let string = self["TPRO"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TPRO"] = new
            } else {
                self["TPRO"] = nil
            }
        }
    }
    

    public var producer: String? {
        get {
            do {
                return try parser.get(.producer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.producer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.producer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.producer.rawValue)")
                }
            } else {
                do {
                    try parser.set(.producer,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.producer.rawValue)")
                }
            }
        }
    }
    
    public var producerKeywords: [String]? {
        get {
            do {
                if try parser.get(.producerKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.producerKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.producerKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.producerKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                }
            }
        }
    }
    
    public var publisher: String? {
        get {
            do {
                return try parser.get(.publisher)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.publisher.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.publisher,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.publisher.rawValue)")
                }
            } else {
                do {
                    try parser.set(.publisher,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.publisher.rawValue)")
                }
            }
        }
    }
    
    public var publisherUrl: String? {
        get {
            do {
                return try parser.get(.publisherUrl)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.publisherUrl.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.publisherUrl,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.publisherUrl.rawValue)")
                }
            } else {
                do {
                    try parser.set(.publisherUrl,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.publisherUrl.rawValue)")
                }
            }
        }
    }

    public var purchaseDate: Date? {
        get {
            do {
                return try parser.get(.purchaseDate)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.purchaseDate.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.purchaseDate, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.purchaseDate.rawValue)")
                }
            } else {
                do {
                    try parser.set(.purchaseDate, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.purchaseDate.rawValue)")
                }
            }
        }
    }

    // MARK: - R-S
    public var radioStation: String? {
        get {
            if let string = self["TRSN"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TRSN"] = new
            } else {
                self["TRSN"] = nil
            }
        }
    }
    
    public var radioStationOwner: String? {
        get {
            if let string = self["TRSO"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["TRSO"] = new
            } else {
                self["TRSO"] = nil
            }
        }
    }
    
    public var radioStationWebpage: String? {
        get {
            if let string = self["WORS"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self["WORS"] = new
            } else {
                self["WORS"] = nil
            }
        }
    }

    public var length: Int {
        get {
            return SwiftMp4MetadataParser.Mp4File.duration
        }
        set {
            SwiftMp4MetadataParser.Mp4File.duration = newValue
        }
    }

    public var rating: ContentRating? {
        get {
            do {
                if let ratingInt = try parser.get(.rating) {
                    if let rating = ContentRating(rawValue: ratingInt) {
                        return rating
                    } else {
                        return ContentRating.none
                    }
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.rating.rawValue)")
                return ContentRating.none
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.rating,
                                   intValue: new.rawValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.rating.rawValue)")
                }
            } else {
                do {
                    try parser.set(.rating,
                                   intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.rating.rawValue)")
                }
            }
        }
    }
    
    public var recordCompany: String? {
        get {
            do {
                return try parser.get(.recordCompany)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.recordCompany.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.recordCompany,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.recordCompany.rawValue)")
                }
            } else {
                do {
                    try parser.set(.recordCompany,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.recordCompany.rawValue)")
                }
            }
        }
    }

    public var recordingDate: Date? {
        get {
            do {
                return try parser.get(.recordingDate)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.recordingDate.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.recordingDate, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.recordingDate.rawValue)")
                }
            } else {
                do {
                    try parser.set(.recordingDate, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.recordingDate.rawValue)")
                }
            }
        }
    }
    
    public var recordingCopyright: String? {
        get {
            do {
                return try parser.get(.recordingCopyright)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.recordingCopyright.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.recordingCopyright,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.recordingCopyright.rawValue)")
                }
            } else {
                do {
                    try parser.set(.recordingCopyright,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.recordingCopyright.rawValue)")
                }
            }
        }
    }
    
    public var releaseDate: Date? {
        get {
            do {
                return try parser.get(.releaseDate)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.releaseDate.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.releaseDate, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.releaseDate.rawValue)")
                }
            } else {
                do {
                    try parser.set(.releaseDate, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.releaseDate.rawValue)")
                }
            }
        }
    }
    
    public var requirements: String? {
        get {
            do {
                return try parser.get(.requirements)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.requirements.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.requirements,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.requirements.rawValue)")
                }
            } else {
                do {
                    try parser.set(.requirements,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.requirements.rawValue)")
                }
            }
        }
    }
    
    public var sellerID: String? {
        get {
            do {
                return try parser.get(.sellerID)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.sellerID.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.sellerID,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.sellerID.rawValue)")
                }
            } else {
                do {
                    try parser.set(.sellerID,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.sellerID.rawValue)")
                }
            }
        }
    }
    
    public var showWorkAndMovement: Bool? {
        get {
            do {
                let value = try parser.get(.showWorkAndMovement)
                if value == 1 {
                    return true
                } else if value == 0 {
                    return false
                } else {
                    return nil
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.showWorkAndMovement.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                var intValue = Int()
                if new == false {
                    intValue = 0
                } else {
                    intValue = 1
                }
                
                do {
                    try parser.set(.showWorkAndMovement,
                                   intValue: intValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.showWorkAndMovement.rawValue)")
                }
            } else {
                do {
                    try parser.set(.showWorkAndMovement,
                                   intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.showWorkAndMovement.rawValue)")
                }
            }
        }
    }
    
    public var soundEngineer: String? {
        get {
            do {
                return try parser.get(.soundEngineer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.soundEngineer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                }
            } else {
                do {
                    try parser.set(.soundEngineer,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                }
            }
        }
    }
    
    public var softwareVersion: String? {
        get {
            do {
                return try parser.get(.softwareVersion)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.softwareVersion.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.softwareVersion,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.softwareVersion.rawValue)")
                }
            } else {
                do {
                    try parser.set(.softwareVersion,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.softwareVersion.rawValue)")
                }
            }
        }
    }
    
    public var soloist: String? {
        get {
            do {
                return try parser.get(.soloist)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.soloist.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.soloist,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.soloist.rawValue)")
                }
            } else {
                do {
                    try parser.set(.soloist,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.soloist.rawValue)")
                }
            }
        }
    }
    
    public var songDescription: String? {
        get {
            do {
                return try parser.get(.songDescription)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.songDescription.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.songDescription,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.songDescription.rawValue)")
                }
            } else {
                do {
                    try parser.set(.songDescription,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.songDescription.rawValue)")
                }
            }
        }
    }
    
    public var songwriterKeywords: [String]? {
        get {
            do {
                if try parser.get(.songwriterKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.songwriterKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.songwriterKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.songwriterKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                }
            }
        }
    }
    
    public var sourceCredit: String? {
        get {
            do {
                return try parser.get(.sourceCredit)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.sourceCredit.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.sourceCredit,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.sourceCredit.rawValue)")
                }
            } else {
                do {
                    try parser.set(.sourceCredit,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.sourceCredit.rawValue)")
                }
            }
        }
    }
    
    public var subtitle: String? {
        get {
            do {
                return try parser.get(.subtitle)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.subtitle.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.subtitle,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.subtitle.rawValue)")
                }
            } else {
                do {
                    try parser.set(.subtitle,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.subtitle.rawValue)")
                }
            }
        }
    }
    
    public var subtitleKeywords: [String]? {
        get {
            do {
                if try parser.get(.subtitleKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.subtitleKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.subtitleKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.subtitleKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                }
            }
        }
    }
    
    // MARK: - T-Z
    public var taggingTime: Date? {
        get {
            if let string = self["TDTG"] {
                let formatter = ISO8601DateFormatter()
                let date = formatter.date(from: string)
                return date
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let formatter = ISO8601DateFormatter()
                let string = formatter.string(from: new)
                self["TDTG"] = string
            } else {
                self["TDTG"] = nil
            }
        }
    }
    
    public var title: String? {
        get {
            do {
                return try parser.get(.title)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.title.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.title,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.title.rawValue)")
                }
            } else {
                do {
                    try parser.set(.title,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.title.rawValue)")
                }
            }
        }
    }
    
    public var titleKeywords: [String]? {
        get {
            do {
                if try parser.get(.titleKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.titleKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.titleKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.titleKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                }
            }
        }
    }
    
    public var titleSort: String? {
        get {
            do {
                return try parser.get(.titleSort)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.titleSort.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.titleSort,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.titleSort.rawValue)")
                }
            } else {
                do {
                    try parser.set(.titleSort,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.titleSort.rawValue)")
                }
            }
        }
    }
    
    public var thanks: String? {
        get {
            do {
                return try parser.get(.thanks)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.thanks.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.thanks,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.thanks.rawValue)")
                }
            } else {
                do {
                    try parser.set(.thanks,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.thanks.rawValue)")
                }
            }
        }
    }
    
    public var trackNumber: (track: Int?, totalTracks: Int?) {
        get {
            do {
                if let tuple = try parser.get(.discNumber) {
                    if let track = tuple.part {
                        if let total = tuple.total {
                            return (track, total)
                        } else {
                            return (track, nil)
                        }
                    } else {
                        if let total = tuple.total {
                            return (nil, total)
                        } else {
                            return (nil, nil)
                        }
                    }
                } else {
                    return (nil, nil)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.trackNumber.rawValue)")
                return (nil, nil)
            }
        }
        set {
            if newValue != (nil, nil) {
                do {
                    try parser.set(.trackNumber, tupleValue: newValue)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.trackNumber.rawValue)")
                }
            } else {
                do {
                    try parser.set(.trackNumber, tupleValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.trackNumber.rawValue)")
                }
            }
        }
    }
    
    public var trackSubtitle: String? {
        get {
            do {
                return try parser.get(.trackSubtitle)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.trackSubtitle.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.trackSubtitle,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.trackSubtitle.rawValue)")
                }
            } else {
                do {
                    try parser.set(.trackSubtitle,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.trackSubtitle.rawValue)")
                }
            }
        }
    }
    
    public var tvEpisodeNumber: Int? {
        get {
            do {
                return try parser.get(.tvEpisodeNumber)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.tvEpisodeNumber.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvEpisodeNumber,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvEpisodeNumber.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvEpisodeNumber, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvEpisodeNumber.rawValue)")
                }
            }
        }
    }
    
    public var tvEpisodeTitle: String? {
        get {
            do {
                return try parser.get(.tvEpisodeTitle)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.trackSubtitle.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvEpisodeTitle,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvEpisodeTitle.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvEpisodeTitle,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvEpisodeTitle.rawValue)")
                }
            }
        }
    }
    
    public var tvSeason: Int? {
        get {
            do {
                return try parser.get(.tvSeason)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.tvSeason.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvSeason,
                                   intValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvSeason.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvSeason, intValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvSeason.rawValue)")
                }
            }
        }
    }
    
    public var tvNetwork: String? {
        get {
            do {
                return try parser.get(.tvNetwork)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.tvNetwork.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvNetwork,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvNetwork.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvNetwork,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvNetwork.rawValue)")
                }
            }
        }
    }
    
    public var tvShow: String? {
        get {
            do {
                return try parser.get(.tvShow)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.tvShow.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvShow,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvShow.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvShow,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvShow.rawValue)")
                }
            }
        }
    }
    
    public var tvShowDescription: String? {
        get {
            do {
                return try parser.get(.tvShowDescription)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.tvShowDescription.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvShowDescription,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvShowDescription.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvShowDescription,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvShowDescription.rawValue)")
                }
            }
        }
    }
    
    public var tvShowSort: String? {
        get {
            do {
                return try parser.get(.tvShowSort)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.tvShowSort.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.tvShowSort,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.tvShowSort.rawValue)")
                }
            } else {
                do {
                    try parser.set(.tvShowSort,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.tvShowSort.rawValue)")
                }
            }
        }
    }
    
    public var website: String? {
        get {
            do {
                return try parser.get(.website)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.website.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.website,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.website.rawValue)")
                }
            } else {
                do {
                    try parser.set(.website,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.website.rawValue)")
                }
            }
        }
    }
    
    public var workName: String? {
        get {
            do {
                return try parser.get(.workName)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.workName.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.workName,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.workName.rawValue)")
                }
            } else {
                do {
                    try parser.set(.workName,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.workName.rawValue)")
                }
            }
        }
    }
    
    public var writer: String? {
        get {
            do {
                return try parser.get(.writer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.writer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.writer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.writer.rawValue)")
                }
            } else {
                do {
                    try parser.set(.writer,
                        stringValue: nil,
                        customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.writer.rawValue)")
                }
            }
        }
    }
    
    public var year: Date? {
        get {
            do {
                return try parser.get(.recordingYear)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.recordingYear.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.recordingYear, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.recordingYear.rawValue)")
                }
            } else {
                do {
                    try parser.set(.recordingYear, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.recordingYear.rawValue)")
                }
            }
        }
    }
    
    // MARK: - Freeform and Removal
    private func getFreeformMetadata(name: String) throws -> String? {
        return try parser.get(customStringMetadata: name)
    }
    
    private func setFreeformMetadata(name: String, stringValue: String?) throws {
        if stringValue != nil {
            try parser.set(.unknown, stringValue: stringValue, customName: name)
        } else {
            try parser.set(.unknown, stringValue: nil, customName: name)
        }
    }
    
    public subscript(_ name: String?) -> String? {
        get {
            do {
            return try getFreeformMetadata(name: name ?? "")
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.unknown.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try setFreeformMetadata(name: name ?? "", stringValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.unknown.rawValue)")
                }
            } else {
                do {
                    try setFreeformMetadata(name: name ?? "", stringValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.unknown.rawValue)")
                }
            }
        }
    }
        
    public mutating func removeAllMetadata() throws {
        try parser.removeAllMetadata()
        self.metadata = []
    }
    
    // MARK: - Chaptering
    /// Retrieves an array of chapters by start time (in milliseconds) and title.
    public var chapterList: [(startTime: Int, title: String)] {
        do {
            return try parser.listChapters()
        } catch {
            print("WARNING: Unable to access chapters from SwiftMp4MetadataParser")
            return []
        }
    }
    
    /// Adds a chapter at the specified start time (in milliseconds) with the specified title.
    /// If a chapter exists at the specified start time, it will be overwritten.
    /// To edit a chapter title, simply overwrite the existing chapter with a new one
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    ///  - title: The chapter title
    public func addChapter(at startTime: Int, title: String) {
        do {
            try parser.addChapter(startTime: startTime, title: title)
        } catch {
            print("WARNING: Unable to add chapters")
        }
    }
    
    /// Removes the chapter at the specified start time.
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    public func removeChapter(at startTime: Int) {
        do {
            try parser.removeChapter(startTime: startTime)
        } catch {
            print("WARNING: Unable to remove chapters")
        }
    }
    
    /// Removes all chapters.
    public func removeAllChapters() throws {
        do {
            try parser.removeAllChapters()
        } catch {
            print("WARNING: Unable to remove chapters")
        }
    }
}
