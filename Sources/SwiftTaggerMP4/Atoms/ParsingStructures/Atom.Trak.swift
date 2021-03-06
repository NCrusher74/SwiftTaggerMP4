/*
  Trak.swift


  Created by Nolaine Crusher on 8/3/20.
*/

import Foundation
import SwiftLanguageAndLocaleCodes

class Trak: Atom {
    /// Initialize an `trak` atom for parsing from the root structure
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
        
        guard children.contains(where: {$0.identifier == "tkhd"}) else {
            throw TrakError.TkhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "mdia"}) else {
            throw TrakError.MdiaAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = children.map({$0.size}).sum()
        var data = Data()
        data.reserveCapacity(reserve)
        data.append(contentsOf: sortedAtoms.flatMap({$0.encode}))
        
        return data
    }

    /// Initialize a `trak` atom from its children
    private init(children: [Atom]) throws {
        let size: Int = 8 + children.map({$0.size}).sum()

        guard children.contains(where: {$0.identifier == "tkhd"}) else {
            throw TrakError.TkhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "mdia"}) else {
            throw TrakError.MdiaAtomNotFound
        }

        try super.init(identifier: "trak",
                       size: size,
                       children: children)
    }
    
    
    convenience init(chapterHandler: ChapterHandler,
                     languages: [ICULocaleCode]?,
                     moov: Moov,
                     chapterTrackID: Int) throws {
        let mdia = try Mdia(chapterHandler: chapterHandler,
                            languages: languages,
                            moov: moov)
        let duration = mdia.minf.stbl.stts.mediaDuration
        let tkhd = try Tkhd(mediaDuration: Double(duration), trackID: chapterTrackID)
        try self.init(children: [tkhd, mdia])
    }
    
    private enum TrakError: Error {
        /// Error thrown when a required atom is missing
        case TkhdAtomNotFound
        /// Error thrown when a required atom is missing
        case MdiaAtomNotFound
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "tkhd": return 1
            case "tref": return 2
            case "mdia": return 4
            default: return 3
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
}

extension Trak {
    var tkhd: Tkhd {
        get {
            if let atom = self[.tkhd] as? Tkhd {
                return atom
            } else {
                fatalError("Required child 'tkhd' is missing from atom '\(self.identifier)'")
            }
        }
        set {
            self[.tkhd] = newValue
        }
    }

    var mdia: Mdia {
        get {
            if let atom = self[.mdia] as? Mdia {
                return atom
            } else {
                fatalError("Required child 'mdia' is missing from atom '\(self.identifier)'")
            }
        }
        set {
            self[.mdia] = newValue
        }
    }
    
    /// Gets and sets a `edts` atom
    var edts: Edts? {
        get {
            self[.edts] as? Edts
        }
        set {
            self[.edts] = newValue
        }
    }
    
    /// Gets and sets the `tref` atom on the sound `trak`
    var tref: Tref? {
        get {
            let trackType = self.mdia.hdlr.handlerSubtype
            if trackType == .soun {
                return self[.tref] as? Tref
            } else {
                return nil
            }
        }
        set {
            let trackType = self.mdia.hdlr.handlerSubtype
            if trackType == .soun {
                if let new = newValue {
                    var newChildren = children.filter({$0.identifier != "tref"})
                    newChildren.append(new)
                    self.children = newChildren
                } else {
                    let newChildren = children.filter({$0.identifier != "tref"})
                    self.children = newChildren
                }
            }
        }
    }
}
