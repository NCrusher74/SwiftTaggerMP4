/*
  Minf.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `minf` atom in an `Mp4File`'s atom structure
class Minf: Atom {
    
    /// Initialize a `minf` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        guard children.contains(where: {
            $0.identifier == "nmhd" ||
            $0.identifier == "gmhd" ||
            $0.identifier == "smhd" ||
            $0.identifier == "vmhd"
        }) else {
            throw MinfError.MediaInformationHeaderAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "dinf"}) else {
            throw MinfError.DinfAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stbl"}) else {
            throw MinfError.StblAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `minf` atom from its children
    private init(children: [Atom]) throws {
        let size: Int = 8 + children.map({$0.size}).sum()

        guard children.contains(where: {
            $0.identifier == "nmhd" ||
                $0.identifier == "gmhd" ||
                $0.identifier == "smhd" ||
                $0.identifier == "vmhd"
        }) else {
            throw MinfError.MediaInformationHeaderAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "dinf"}) else {
            throw MinfError.DinfAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stbl"}) else {
            throw MinfError.StblAtomNotFound
        }

        try super.init(identifier: "minf",
                       size: size,
                       children: children)
    }
    
    convenience init(chapterHandler: ChapterHandler,
                     moov: Moov) throws {
        let stbl = try Stbl(chapterHandler: chapterHandler,
                            moov: moov)
        let dinf = try Dinf(from: try Dref())
        let nmhd = try Nmhd()

        try self.init(children: [nmhd, dinf, stbl])
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "nmhd", "gmhd", "smhd", "vmhd": return 1
            case "dinf": return 2
            case "stbl": return 3
            default: return 4
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

    private enum MinfError: Error {
        /// Error thrown when a required atom is missing
        case MediaInformationHeaderAtomNotFound
        /// Error thrown when a required atom is missing
        case DinfAtomNotFound
        /// Error thrown when a required atom is missing
        case StblAtomNotFound
    }
    
    var nmhd: Nmhd {
        get {
            if let atom = self[.nmhd] as? Nmhd {
                return atom
            } else {
                fatalError("Required child 'nmhd' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.nmhd] = newValue
        }
    }
    
    var dinf: Dinf {
        get {
            if let atom = self[.dinf] as? Dinf {
                return atom
            } else {
                fatalError("Required child 'dinf' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.dinf] = newValue
        }
    }
    
    var stbl: Stbl {
        get {
            if let atom = self[.stbl] as? Stbl {
                return atom
            } else {
                fatalError("Required child 'stbl' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.stbl] = newValue
        }
    }
}
