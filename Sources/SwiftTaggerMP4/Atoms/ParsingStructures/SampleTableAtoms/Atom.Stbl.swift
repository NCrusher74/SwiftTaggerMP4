/*
  Stbl.swift
  

  Created by Nolaine Crusher on 8/4/20.
*/

import Foundation

/// A class representing a `stbl` atom in an `Mp4File`'s atom structure
///
/// An `stbl` atom is simply a container atom for a collection of atoms that comprise what is known as the sample table. These atoms map the relationships between different elements required to handle mp4 file data.
class Stbl: Atom {
    /// Initialize a `stbl` atom for parsing from the file content
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        // required sub-atoms are `stsd`, `stsc`, `stts`, `stsz`, and `chunkOffsetAtom`
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
    
    /// Initialize an `stbl` atom from its subatoms
    private init(children: [Atom]) throws {
        let size: Int = children.map({$0.size}).sum() + 8 // size and id bytes

        // required sub-atoms are `stsd`, `stsc`, `stts`, `stsz`.
        // chunkOffsetAtom is also required, but when using this initializer, we add that after the chapter track being built has been initialized, as we can't calculate the offsets until after the chapter track has been built.
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
    
    /// Initialize an `stbl` atom when building a chapter track
    convenience init(chapterHandler: ChapterHandler,
                     moov: Moov) throws {
        let stsd = try Stsd()
        let stsc = try Stsc()

        let mvhd = moov.mvhd
        let stts = try Stts(chapterHandler: chapterHandler,
                            mediaDuration: mvhd.duration)
        
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
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = children.map({$0.size}).sum()
        var data = Data()
        data.reserveCapacity(reserve)
        data.append(contentsOf: sortedAtoms.flatMap({$0.encode}))
        
        return data
    }

    var stsc: Stsc {
        get {
            if let atom = self[.stsc] as? Stsc {
                return atom
            } else {
                fatalError("Required child 'stsc' is missing from atom with identifier '\(self.identifier)'")
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
                fatalError("Required child 'stsd' is missing from atom with identifier '\(self.identifier)'")
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
                fatalError("Required child 'stsz' is missing from atom with identifier '\(self.identifier)'")
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
                fatalError("Required child 'stts' is missing from atom with identifier '\(self.identifier)'")
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
                fatalError("Required child 'chunkOffsetAtom' is missing from atom with identifier '\(self.identifier)'")
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
    
    func getChapterTitlesFromOffsetsAndSizes(
        offsets: [Int],
        sizes: [Int],
        data: Data) -> [String] {
        var titles = [String]()
        
        if offsets.count == sizes.count {
            // don't assume samples are consecutive
            for (index, size) in sizes.enumerated() {
                let start = offsets[index]
                let end = start + size
                let range = start ..< end
                var chunkData = data[range]
                let stringLength = chunkData.extractToInt(2)
                let stringData = chunkData.extractFirst(stringLength)
                let bom: Data = Data([0xfe, 0xff])
                let bomRange = stringData.startIndex ..< stringData.index(stringData.startIndex, offsetBy: 2)
                if stringData[bomRange] == bom {
                    if let string = String(data: stringData, encoding: .utf16) {
                        titles.append(string)
                    } else {
                        titles.append("Unparseable utf16 string")
                    }
                } else {
                    if let string = stringData.stringUtf8 {
                        titles.append(string)
                    } else {
                        titles.append("Unparseable utf8 string")
                    }
                }
            }
        } else {
            // assume samples are consecutive, since we only have the first index to work with
            if let firstOffset = offsets.first {
                var offset = firstOffset
                for size in sizes {
                    let next = offset + size
                    let range = offset ..< next
                    var chunkData = data[range]
                    let stringLength = chunkData.extractToInt(2)
                    if let string = chunkData.extractFirst(stringLength).stringUtf8 {
                        titles.append(string)
                    }
                    offset = next
                }
            }
        }
        return titles
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
    case SampleDurationArrayIsEmpty
}
