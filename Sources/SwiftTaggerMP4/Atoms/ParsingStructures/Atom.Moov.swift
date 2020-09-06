/*
  Moov.swift


  Created by Nolaine Crusher on 8/2/20.
*/

import Foundation
/// Initialize an `moov` atom for parsing from the root structure
class Moov: Atom {
    var tracks: [Trak]
    var mvhd: Mvhd
    var soundTrack: Trak
    
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
        guard !tracks.isEmpty else {
            throw MoovError.TrakAtomNotFound
        }
        self.tracks = tracks
        
        if let soundtrack = tracks.first(where: {
            $0.mdia.hdlr.handlerSubtype == .soun
        }) {
            self.soundTrack = soundtrack
        } else {
            throw MoovError.TrakAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            let childData = child.encode()
            data.append(childData)
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
        guard !tracks.isEmpty else {
            throw MoovError.TrakAtomNotFound
        }
        self.tracks = tracks

        if let soundtrack = tracks.first(where: {
            $0.mdia.hdlr.handlerSubtype == .soun
        }) {
            self.soundTrack = soundtrack
        } else {
            throw MoovError.TrakAtomNotFound
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

extension Moov {
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "mvhd":
                return 1
            case "trak":
                return 2
            default:
                return 3
        }
    }
    
    /// The array of root atoms, arranged to preserve media offsets
    var rearrangedMoovChildren: [Atom] {
        var rearrangedChildren = self.children
        rearrangedChildren.sort(
            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier) }
        )
        return rearrangedChildren
    }
    
    var chapterTrack: Trak? {
        get {
            self.tracks.first(where: {$0.tkhd.trackID == chapterTrackID})
        }
        set {
            if let new = newValue {
                var newTracks: [Trak] = self.tracks.filter({$0.tkhd.trackID == chapterTrackID})
                newTracks.append(new)
                self.tracks = newTracks
            }
        }
    }
    
    /// Gets and sets a `trackID` property for use in locating or creating a chapter track
    var chapterTrackID: Int? {
        get {
            if let chap = self.soundTrack.tref?.chap {
                return chap.trackIDs.first
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let chap = try TrefSubatom(chapterTrackID: new)
                    if self.soundTrack.tref != nil {
                        self.soundTrack.tref?.chap = chap
                    } else {
                        self.soundTrack.tref = try Tref(chapterTrackID: new)
                    }
                } catch {
                    fatalError("Unable set new new chapter track ID")
                }
                self.mvhd.incrementNextTrackID()
            } else {
                self.soundTrack.tref?.chap = nil
            }
        }
    }
    
    /// Gets and sets a `udta` atom
    var udta: Udta? {
        get {
            if let udta = children.first(where: {$0.identifier == "udta"}) as? Udta {
                return udta
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                var newChildren = self.children.filter({$0.identifier != "udta"})
                newChildren.append(new)
                self.children = newChildren
            } else {
                let newChildren = children.filter({$0.identifier != "udta"})
                self.children = newChildren
            }
        }
    }
}
