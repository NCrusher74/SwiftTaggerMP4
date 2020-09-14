/*
  Stbl.swift
  

  Created by Nolaine Crusher on 8/4/20.
*/

import Foundation

/// A class representing a `stbl` atom in an `Mp4File`'s atom structure
class Stbl: Atom {
    /// Initialize a `stbl` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        guard children.contains(where: {$0.identifier == "stsd"}) else {
            throw StblError.StsdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsc"}) else {
            throw StblError.StscAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stts"}) else {
            throw StblError.SttsAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsz"}) else {
            throw StblError.StszAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "c064" || $0.identifier == "stco"}) else {
            throw StblError.ChunkOffsetAtomNotFound
        }

        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize an `stbl` atom from its children
    private init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        guard children.contains(where: {$0.identifier == "stsd"}) else {
            throw StblError.StsdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsc"}) else {
            throw StblError.StscAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stts"}) else {
            throw StblError.SttsAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsz"}) else {
            throw StblError.StszAtomNotFound
        }

        try super.init(identifier: "stbl",
                       size: size,
                       children: children)
    }
    
    convenience init(chapterHandler: ChapterHandler,
                     moov: Moov) throws {
        let stsd = try Stsd()
        let stsc = try Stsc()

        var starts = [Double]()
        for start in chapterHandler.chapterStarts {
            starts.append(Double(start))
        }
        let mdhd = moov.soundTrack.mdia.mdhd
        let stts = try Stts(chapterHandler: chapterHandler,
                            mediaDuration: mdhd.duration)
        
        let stsz = try Stsz(titles: chapterHandler.chapterTitles)
        try self.init(children: [stsd, stsc, stts, stsz])
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "stsd": return 1
            case "stsc": return 2
            case "stts": return 3
            case "stsz": return 4
            default: return 5
        }
    }
    
    /// The array of root atoms, arranged to preserve media offsets
    var sortedAtoms: [Atom] {
        var rearrangedAtoms = self.children
        rearrangedAtoms.sort(
            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier) }
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

    var stsc: Stsc {
        get {
            if let atom = self[.stsc] as? Stsc {
                return atom
            } else {
                fatalError("Required child 'stsc' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.stsc] = newValue
        }
    }

    var stsd: Stsd {
        get {
            if let atom = self[.stsd] as? Stsd {
                return atom
            } else {
                fatalError("Required child 'stsd' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.stsd] = newValue
        }
    }
    
    var stsz: Stsz {
        get {
            if let atom = self[.stsz] as? Stsz {
                return atom
            } else {
                fatalError("Required child 'stsz' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.stsz] = newValue
        }
    }
    
    var stts: Stts {
        get {
            if let atom = self[.stts] as? Stts {
                return atom
            } else {
                fatalError("Required child 'stts' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.stts] = newValue
        }
    }
    
    var chunkOffsetAtom: ChunkOffsetAtom {
        get {
            if let atom = self[.co64] as? ChunkOffsetAtom ?? self[.stco] as? ChunkOffsetAtom{
                return atom
            } else {
                fatalError("Required child 'chunkOffsetAtom' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            if newValue.identifier == "co64" {
                self[.co64] = newValue
            } else {
                self[.stco] = newValue
            }
        }
    }
}

enum StblError: Error {
    /// Error thrown when a required atom is missing
    case StsdAtomNotFound
    /// Error thrown when a required atom is missing
    case StscAtomNotFound
    /// Error thrown when a required atom is missing
    case ChunkOffsetAtomNotFound
    /// Error thrown when a required atom is missing
    case StszAtomNotFound
    /// Error thrown when a required atom is missing
    case SttsAtomNotFound
    case UnableToBuildStblAtom
    case SampleSizeArrayIsEmpty
}
