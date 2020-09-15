/*
  Moov.swift


  Created by Nolaine Crusher on 8/2/20.
*/

import Foundation
/// Initialize an `moov` atom for parsing from the root structure
class Moov: Atom {
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
        
        guard children.contains(where: {$0.identifier == "mvhd"}) else {
            throw MoovError.MvhdAtomNotFound
        }
        let tracks = children.filter({$0.identifier == "trak"}) as? [Trak] ?? []
        guard tracks.contains(where: {$0.mdia.hdlr.handlerSubtype == .soun}) else {
            throw MoovError.TrakAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "mvhd": return 1
            case "trak": return 2
            default: return 3
        }
    }
    
    private func trackSorting(forTrackType trackType: TrackType) -> Double {
        switch trackType {
            case .soun: return 2.1
            case .text: return 2.2
            default: return 2.3
        }
    }
    
    /// The array of root atoms, arranged to preserve media offsets
    var sortedAtoms: [Atom] {
        var tracks = self.tracks
        tracks.sort(
            by: { trackSorting(forTrackType: $0.mdia.hdlr.handlerSubtype) < trackSorting(forTrackType: $1.mdia.hdlr.handlerSubtype)}
        )
        self.tracks = tracks
        var rearrangedAtoms = self.children
        rearrangedAtoms.sort(
            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier)}
        )
        
        return rearrangedAtoms
    }
    
    override var contentData: Data {
        var data = Data()
        for atom in self.sortedAtoms {
            data.append(atom.encode())
        }
        return data
    }

    /// Initialize a `moov` atom from its children
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        guard children.contains(where: {$0.identifier == "mvhd"}) else {
            throw MoovError.MvhdAtomNotFound
        }
        let tracks = children.filter({$0.identifier == "trak"}) as? [Trak] ?? []
        guard tracks.contains(where: {$0.mdia.hdlr.handlerSubtype == .soun}) else {
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
    var mvhd: Mvhd {
        get {
            if let atom = self[.mvhd] as? Mvhd {
                return atom
            } else {
                fatalError("Required child 'mvhd' is missing from atom '\(self.identifier)'")
            }
        }
        set {
            self[.mvhd] = newValue
        }
    }
    
    var soundTrack: Trak {
        get {
            if let atom = self[.trak] as? Trak,
                atom.mdia.hdlr.handlerSubtype == .soun {
                return atom
            } else {
                fatalError("Required child 'trak' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            var newTracks = tracks.filter({$0.mdia.hdlr.handlerSubtype != .soun})
            newTracks.append(newValue)
            tracks = newTracks
        }
    }
 
    var tracks: [Trak] {
        get {
            return children.filter({$0.identifier == "trak"}) as? [Trak] ?? []
        }
        set {
            var newChildren = children.filter({$0.identifier != "trak"})
            newChildren.append(contentsOf: newValue)
            self.children = newChildren
        }
    }
    
    var chapterTrackID: Int? {
        get {
            if let trackID = soundTrack.tref?.chap?.trackIDs.first {
                return trackID
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                if soundTrack.tref != nil {
                    do {
                        soundTrack.tref?.chap = try TrefSubatom(chapterTrackID: new)
                    } catch {
                        print("WARNING: Unable to initialize soundtrack.tref.chap atom with new chapter trackID")
                    }
                } else {
                    do {
                        soundTrack.tref = try Tref(chapterTrackID: new)
                    } catch {
                        print("WARNING: Unable to initialize soundtrack.tref atom with new chapter track ID")
                    }
                }
            } else {
                self.chapterTrack = nil
                if let tref = soundTrack.tref, tref.children.count > 1 {
                    tref.chap = nil
                } else {
                    soundTrack.tref = nil
                }
            }
        }
    }
    
    var chapterTrack: Trak? {
        get {
            if let atom = tracks.first(where: {$0.tkhd.trackID == self.chapterTrackID}) {
                return atom
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                var newTracks = self.tracks.filter({$0.tkhd.trackID != self.chapterTrackID})
                newTracks.append(new)
                self.tracks = newTracks
            } else {
                let newTracks = self.tracks.filter({$0.tkhd.trackID != self.chapterTrackID})
                self.tracks = newTracks
            }
        }
    }
    
    var udta: Udta? {
        get {
            if let atom = self[.udta] as? Udta {
                return atom
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self[.udta] = new
            } else {
                self[.udta] = nil
            }
        }
    }
}
