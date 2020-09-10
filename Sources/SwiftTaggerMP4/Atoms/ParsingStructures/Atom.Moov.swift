/*
  Moov.swift


  Created by Nolaine Crusher on 8/2/20.
*/

import Foundation
/// Initialize an `moov` atom for parsing from the root structure
class Moov: Atom {
    var mvhd: Mvhd
    var soundTrack: Trak
    var chapterTrackID: Int?
    var chapterTrack: Trak?
    var otherTracks: [Trak]
    var udta: Udta?
    
    /// Initialize an `mdat` atom for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let mvhd = children.first(where: {$0.identifier == "mvhd"}) as? Mvhd {
            self.mvhd = mvhd
        } else {
            throw MoovError.MvhdAtomNotFound
        }
        
        let tracks = children.filter({$0.identifier == "trak"}) as? [Trak] ?? []
        if let soundTrack = tracks.first(where: {$0.mdia.hdlr.handlerSubtype == .soun}) {
            self.soundTrack = soundTrack
        } else {
            throw MoovError.TrakAtomNotFound
        }
        
        if let chapterTrackID = soundTrack.tref?.chap?.trackIDs.first {
            self.chapterTrackID = chapterTrackID
            self.chapterTrack = tracks.first(where: {$0.tkhd.trackID == chapterTrackID })
            self.otherTracks = tracks.filter({$0.mdia.hdlr.handlerSubtype != .soun && $0.tkhd.trackID != chapterTrackID})
        } else {
            self.chapterTrackID = nil
            self.chapterTrack = nil
            self.otherTracks = tracks.filter({$0.mdia.hdlr.handlerSubtype != .soun})
        }
        
        if let udta = children.first(where: {$0.identifier == "udta"}) as? Udta {
            self.udta = udta
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(mvhd.encode())
        data.append(soundTrack.encode())
        if let chapterTrack = chapterTrack {
            data.append(chapterTrack.encode())
        }
        for track in otherTracks {
            data.append(track.encode())
        }
        if let udta = udta {
            data.append(udta.encode())
        }
        for child in children.filter({$0.identifier != "mvhd" && $0.identifier != "trak" && $0.identifier != "udta"}) {
            data.append(child.encode())
        }
        return data
    }
    
    /// Initialize a `moov` atom from its children
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        if let mvhd = children.first(where: {$0.identifier == "mvhd"}) as? Mvhd {
            self.mvhd = mvhd
        } else {
            throw MoovError.MvhdAtomNotFound
        }

        let tracks = children.filter({$0.identifier == "trak"}) as? [Trak] ?? []
        if let soundTrack = tracks.first(where: {
            $0.mdia.hdlr.handlerSubtype == .soun
        }) {
            self.soundTrack = soundTrack
        } else {
            throw MoovError.TrakAtomNotFound
        }

        if let chapterTrackID = soundTrack.tref?.chap?.trackIDs.first {
            self.chapterTrackID = chapterTrackID
            self.chapterTrack = tracks.first(where: {$0.tkhd.trackID == chapterTrackID })
            self.otherTracks = tracks.filter({$0.mdia.hdlr.handlerSubtype != .soun && $0.tkhd.trackID != chapterTrackID})
        } else {
            self.chapterTrackID = nil
            self.chapterTrack = nil
            self.otherTracks = tracks.filter({$0.mdia.hdlr.handlerSubtype != .soun})
        }

        if let udta = children.first(where: {$0.identifier == "udta"}) as? Udta {
            self.udta = udta
        }

        try super.init(identifier: "moov",
                       size: size,
                       children: children)
    }
}

enum MoovError: Error {
    /// Error thrown when a required atom is missing
    case MvhdAtomNotFound
    /// Error thrown when a required atom is missing
    case TrakAtomNotFound
}
