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
        var size: Int = 8
        for child in children {
            size += child.size
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

        try super.init(identifier: "mdia",
                       size: size,
                       children: children)
    }
    
    @available(OSX 10.12, *)
    convenience init(chapterHandler: ChapterHandler,
                     language: ICULocaleCode?,
                     moov: Moov) throws {
        let minf = try Minf(chapterHandler: chapterHandler,
                            moov: moov)
        let hdlr = try Hdlr(trackType: .text)
        let mdhd: Mdhd
        if let language = language {
            mdhd = try Mdhd(elng: try Elng(from: language), moov: moov)
        } else {
            mdhd = try Mdhd(language: .und, moov: moov)
        }
        try self.init(children: [mdhd, hdlr, minf])
        if let language = language {
            self.elng = try Elng(from: language)
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
    
    override var contentData: Data {
        var data = Data()
        for atom in self.sortedAtoms {
            data.append(atom.encode())
        }
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
    @available(OSX 10.12, *)
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
                        fatalError("Unable to initialize 'mdhd' atom for using 'elng' locale")
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
