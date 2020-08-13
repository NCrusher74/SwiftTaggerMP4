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
public struct Tag {
    public var metadata: [(identifier: AtomIdentifier, value: Any)]
    var parser: SwiftMp4MetadataParser.Mp4File

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
            }
        }
    }

    public var arrangerKeywords: [String] {
        get {
            do {
                return try parser.get(.arrangerKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.arrangerKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
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
            }
        }
    }
    
    public var artistKeywords: [String] {
        get {
            do {
                return try parser.get(.artistKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.artistKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
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
            }
        }
    }
    
    public var compilation: Bool {
        get {
            do {
                let value = try parser.get(.compilation)
                if value == 1 {
                    return true
                } else {
                    return false
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.compilation.rawValue)")
                return false
            }
        }
        set {
            var intValue = Int()
            if newValue == false {
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
            }
        }
    }
    
    public var composerKeywords: [String] {
        get {
            do {
                return try parser.get(.composerKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.composerKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
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
    
    func setCoverArt(imageLocation: URL) throws {
        try parser.set(coverImage: imageLocation)
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
            }
        }
    }
    
    public var discNumber: (disc: Int, totalDiscs: Int?) {
        get {
            do {
                let array = try parser.get(.discNumber)
                if let disc = array.first {
                    if let total = array.last, array.count > 1 {
                        return (disc, total)
                    } else {
                        return (disc, nil)
                    }
                } else {
                    return (0, nil)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.discNumber.rawValue)")
                return (0, nil)
            }
        }
        set {
            do {
                var array = [newValue.disc]
                if let total = newValue.totalDiscs {
                    array.append(total)
                }
                try parser.set(.discNumber, arrayValue: array)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.discNumber.rawValue)")
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
            }
        }
    }
    
    // MARK: - F-K
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
            }
        }
    }
    
    public var gaplessPlayback: Bool {
        get {
            do {
                let value = try parser.get(.gaplessPlayback)
                if value == 1 {
                    return true
                } else {
                    return false
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.gaplessPlayback.rawValue)")
                return false
            }
        }
        set {
            var intValue = Int()
            if newValue == false {
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
        }
    }
    
    public var genreID: Genres {
        get {
            do {
                let id = try parser.get(.genreID)
                if let genreID = Genres(rawValue: id ?? 0) {
                    return genreID
                } else {
                    return .unknown
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.genreID.rawValue)")
                return .unknown
            }
        }
        set {
            do {
                try parser.set(.genreID,
                               intValue: newValue.rawValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.genreID.rawValue)")
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
            }
        }
    }
    
    public var mediaType: MediaType {
        get {
            do {
                let id = try parser.get(.mediaType)
                if let mediaType = MediaType(rawValue: id ?? 1) {
                    return mediaType
                } else {
                    return .music
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.mediaType.rawValue)")
                return .music
            }
        }
        set {
            do {
                try parser.set(.mediaType,
                               intValue: newValue.rawValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.mediaType.rawValue)")
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
            }
        }
    }
    
    public var podcast: Bool {
        get {
            do {
                let value = try parser.get(.podcast)
                if value == 1 {
                    return true
                } else {
                    return false
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.podcast.rawValue)")
                return false
            }
        }
        set {
            var intValue = Int()
            if newValue == false {
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
            }
        }
    }
    
    public var podcastKeywords: [String] {
        get {
            do {
                return try parser.get(.keywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.keywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.keywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.keywords.rawValue)")
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
            }
        }
    }
    
    public var predefinedGenre: Genres {
        get {
            do {
                let nameString = try parser.get(.predefinedGenre) ?? "unknown"
                if let genreByName = Genres(genreName: nameString) {
                    return genreByName
                } else {
                    return .unknown
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.predefinedGenre.rawValue)")
                return .unknown
            }
        }
        set {
            do {
                try parser.set(.predefinedGenre,
                               stringValue: newValue.predefinedGenres ?? "unknown",
                               customName: nil)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.predefinedGenre.rawValue)")
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
            }
        }
    }
    
    public var producerKeywords: [String] {
        get {
            do {
                return try parser.get(.producerKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.producerKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
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
            }
        }
    }

    // MARK: - R-S
    public var rating: ContentRating {
        get {
            do {
                let ratingInt = try parser.get(.rating) ?? 0
                if let rating = ContentRating(rawValue: ratingInt) {
                    return rating
                } else {
                    return .none
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.rating.rawValue)")
                return .none
            }
        }
        set {
            do {
                try parser.set(.rating,
                               intValue: newValue.rawValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.rating.rawValue)")
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
            }
        }
    }
    
    public var showWorkAndMovement: Bool {
        get {
            do {
                let value = try parser.get(.showWorkAndMovement)
                if value == 1 {
                    return true
                } else {
                    return false
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.showWorkAndMovement.rawValue)")
                return false
            }
        }
        set {
            var intValue = Int()
            if newValue == false {
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
            }
        }
    }
    
    public var songwriterKeywords: [String] {
        get {
            do {
                return try parser.get(.songwriterKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.songwriterKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
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
            }
        }
    }
    
    public var subtitleKeywords: [String] {
        get {
            do {
                return try parser.get(.subtitleKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.subtitleKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
            }
        }
    }
    
    // MARK: - T-Z
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
            }
        }
    }
    
    public var titleKeywords: [String] {
        get {
            do {
                return try parser.get(.titleKeywords)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                return []
            }
        }
        set {
            do {
                try parser.set(.titleKeywords, arrayValue: newValue)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
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
            }
        }
    }
    
    public var trackNumber: (track: Int, totalTracks: Int?) {
        get {
            do {
                let array = try parser.get(.trackNumber)
                if let track = array.first {
                    if let total = array.last, array.count > 1 {
                        return (track, total)
                    } else {
                        return (track, nil)
                    }
                } else {
                    return (0, nil)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.trackNumber.rawValue)")
                return (0, nil)
            }
        }
        set {
            //            print(newValue) // nil
            do {
                var array = [newValue.track]
                if let total = newValue.totalTracks {
                    array.append(total)
                }
                try parser.set(.trackNumber, arrayValue: array)
            } catch {
                print("WARNING: Unable to set metadata atom \(AtomIdentifier.trackNumber.rawValue)")
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
            }
        }
    }
    
    private func getFreeformMetadata(name: String) throws -> String? {
        return try parser.get(customStringMetadata: name)
    }
    
    private func setFreeformMetadata(name: String, stringValue: String) throws {
        try parser.set(.unknown, stringValue: stringValue, customName: name)
    }
    
    public subscript(userDefinedText userTextDescription: String?) -> String? {
        get {
            do {
            return try getFreeformMetadata(name: userTextDescription ?? "")
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.unknown.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try setFreeformMetadata(name: userTextDescription ?? "", stringValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.unknown.rawValue)")
                }
            }
        }
    }
    
    public var audioFileWebpage: String? {
        get {
            if let string = self[userDefinedText: "WOAF"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "WOAF"] = new
            }
        }
    }
    
    public var audioSourceWebpage: String? {
        get {
            if let string = self[userDefinedText: "WOAS"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "WOAS"] = new
            }
        }
    }

    public var copyrightWebpage: String? {
        get {
            if let string = self[userDefinedText: "WCOP"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "WCOP"] = new
            }
        }
    }

    public var encodingTime: Date? {
        get {
            if let string = self[userDefinedText: "TDEN"] {
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
                self[userDefinedText: "TDEN"] = string
            }
        }
    }

    public var taggingTime: Date? {
        get {
            if let string = self[userDefinedText: "TDTG"] {
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
                self[userDefinedText: "TDTG"] = string
            }
        }
    }

    public var originalReleaseTime: Date? {
        get {
            if let string = self[userDefinedText: "TDOR"] {
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
                self[userDefinedText: "TDOR"] = string
            }
        }
    }
    
    public var paymentWebpage: String? {
        get {
            if let string = self[userDefinedText: "WPAY"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "WPAY"] = new
            }
        }
    }

    public var encodingSettings: String? {
        get {
            if let string = self[userDefinedText: "TSSE"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TSSE"] = new
            }
        }
    }

    public var fileType: FileType {
        get {
            if let string = self[userDefinedText: "TFLT"] {
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
            self[userDefinedText: "TFLT"] = newValue.rawValue
        }
    }

    public var initialKey: KeySignature {
        get {
            if let string = self[userDefinedText: "TKEY"] {
                if let key = KeySignature(rawValue: string) {
                    return key
                } else {
                    return .unknown
                }
            } else {
                return .unknown
            }
        }
        set {
            self[userDefinedText: "TKEY"] = newValue.rawValue
        }
    }

    public var mood: String? {
        get {
            if let string = self[userDefinedText: "TMOO"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TMOO"] = new
            }
        }
    }

    public var originalAlbum: String? {
        get {
            if let string = self[userDefinedText: "TOAL"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TOAL"] = new
            }
        }
    }

    public var originalFilename: String? {
        get {
            if let string = self[userDefinedText: "TOFN"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TOFN"] = new
            }
        }
    }

    public var originalLyricist: String? {
        get {
            if let string = self[userDefinedText: "TOLY"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TOLY"] = new
            }
        }
    }

    public var radioStation: String? {
        get {
            if let string = self[userDefinedText: "TRSN"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TRSN"] = new
            }
        }
    }

    public var radioStationOwner: String? {
        get {
            if let string = self[userDefinedText: "TRSO"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TRSO"] = new
            }
        }
    }

    public var radioStationWebpage: String? {
        get {
            if let string = self[userDefinedText: "WORS"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "WORS"] = new
            }
        }
    }

    public var producedNotice: String? {
        get {
            if let string = self[userDefinedText: "TPRO"] {
                return string
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[userDefinedText: "TPRO"] = new
            }
        }
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
