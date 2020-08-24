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
    
    public var discNumber: (disc: Int?, totalDiscs: Int?) {
        get {
            do {
                let tuple = try parser.get(.discNumber)
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
    
    public var stik: Stik? {
        get {
            do {
                if let id = try parser.get(.mediaType) {
                    if let mediaType = Stik(rawValue: id) {
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
    
    public var trackNumber: (track: Int?, totalTracks: Int?) {
        get {
            do {
                let tuple = try parser.get(.trackNumber)
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
    

}
