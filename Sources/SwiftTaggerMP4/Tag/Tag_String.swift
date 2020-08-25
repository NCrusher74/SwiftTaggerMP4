//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/20/20.
//

import Foundation
import SwiftMp4MetadataParser

@available(OSX 10.13, *)
extension Tag {
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
    
    // MARK: - B-C
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
    
    public var contentAdvisory: (rating: ContentAdvisory?, ratingNotes: String?) {
        get {
            if let string = self["iTunEXTC"] {
                var ratingNotes: String? = nil
                var contentRating: ContentAdvisory? = nil
                let components: [String] = string.components(separatedBy: "|")
                if components.count > 3 && components.count <= 4 {
                    ratingNotes = components.last
                    let ratingArray = components.dropLast()
                    let ratingString = "\(ratingArray.joined(separator: "|"))|"
                    if let rating = ContentAdvisory(rawValue: ratingString) {
                        contentRating = rating
                    }
                }
                return (contentRating, ratingNotes)
            } else {
                return (nil, nil)
            }
        }
        set {
            if newValue != (nil, nil), newValue.rating != nil {
                let string = "\(newValue.rating?.rawValue ?? "")\(newValue.ratingNotes ?? "")"
                self["iTunEXTC"] = string
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
    
//    public var initialKey: KeySignature? {
//        get {
//            if let string = self["TKEY"] {
//                if let key = KeySignature(rawValue: string) {
//                    return key
//                } else {
//                    return .unknown
//                }
//            } else {
//                return nil
//            }
//        }
//        set {
//            if let new = newValue {
//                self["TKEY"] = new.rawValue
//            } else {
//                self["TKEY"] = nil
//            }
//        }
//    }
    
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
    
    public var performers: [String]? {
        get {
            do {
                if try parser.get(.performers).isEmpty {
                    return nil
                } else {
                    return try parser.get(.performers)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.performers,
                                   arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.performers.rawValue)")
                }
            } else {
                do {
                    try parser.set(.performers,
                                   arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.performers.rawValue)")
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
    
    public var podcastUrl: String? {
        get {
            do {
                return try parser.get(.podcastUrl)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.podcastUrl.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.podcastUrl,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.podcastUrl.rawValue)")
                }
            } else {
                do {
                    try parser.set(.podcastUrl,
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
    
    // MARK: - R-S
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
    
    public var songwriter: String? {
        get {
            do {
                return try parser.get(.songwriter)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.songwriter.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.songwriter,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.songwriter.rawValue)")
                }
            } else {
                do {
                    try parser.set(.soloist,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.songwriter.rawValue)")
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
}
