/*
  Mdia.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation
import SwiftLanguageAndLocaleCodes
/// A class representing a `mdia` atom in an `Mp4File`'s atom structure
class Mdia: Atom {

    /// Initialize a `mdia` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        guard children.contains(where: {$0.identifier == "mdhd"}) else {
            throw MdiaError.MdhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw MdiaError.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "minf"}) else {
            throw MdiaError.MinfAtomNotFound
        }

        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `mdia` atom from its child atoms
    private init(children: [Atom]) throws {
        let size: Int = 8 + children.map({$0.size}).sum()

        guard children.contains(where: {$0.identifier == "mdhd"}) else {
            throw MdiaError.MdhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw MdiaError.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "minf"}) else {
            throw MdiaError.MinfAtomNotFound
        }

        try super.init(identifier: "mdia",
                       size: size,
                       children: children)
    }
    
    convenience init(chapterHandler: ChapterHandler,
                     languages: [ICULocaleCode]?,
                     moov: Moov) throws {
        let minf = try Minf(chapterHandler: chapterHandler,
                            moov: moov)
        let hdlr = try Hdlr(trackType: .text)
        let mdhd: Mdhd
        if let languages = languages {
            mdhd = try Mdhd(elng: try Elng(locales: languages), moov: moov)
        } else {
            mdhd = try Mdhd(language: .und, moov: moov)
        }
        try self.init(children: [mdhd, hdlr, minf])
        
        if let languages = languages {
            self.elng = try Elng(locales: languages)
        }
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "mdhd": return 1
            case "hdlr": return 2
            case "minf": return 3
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
}

extension Mdia {
    var mdhd: Mdhd {
        get {
            if let atom = self[.mdhd] as? Mdhd {
                return atom
            } else {
                fatalError("Required child 'mdhd' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.mdhd] = newValue
        }
    }
    
    var hdlr: Hdlr {
        get {
            if let atom = self[.hdlr] as? Hdlr {
                return atom
            } else {
                fatalError("Required child 'hdlr' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.hdlr] = newValue
        }
    }
    
    var minf: Minf {
        get {
            if let atom = self[.minf] as? Minf {
                return atom
            } else {
                fatalError("Required child 'minf' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.minf] = newValue
        }
    }

    /// Gets and sets an `elng` atom
    
    var elng: Elng? {
        get {
            return children.first(where: { $0.identifier == "elng"}) as? Elng
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "elng"})
                newChildren.append(new)
                self.children = newChildren
                
                if let mdia = self.siblings?.first(where: {$0.identifier == "mdia"}) as? Mdia, mdia.hdlr.handlerSubtype == .soun {
                    self.mdhd.language = Mdhd.getLanguage(from: new)
                } else {
                    do {
                        if let moov = self.parent?.parent as? Moov {
                            self.mdhd = try Mdhd(elng: new, moov: moov)
                        }
                    } catch {
                        fatalError("Unable to initialize 'mdhd' atom using 'elng' locale")
                    }
                }
            } else {
                let newChildren = children.filter({$0.identifier != "elng"})
                self.children = newChildren
            }
        }
    }
    
    private enum MdiaError: Error {
        /// Error thrown when a required atom is missing
        case HdlrAtomNotFound
        /// Error thrown when a required atom is missing
        case MdhdAtomNotFound
        /// Error thrown when a required atom is missing
        case MinfAtomNotFound
    }
}
