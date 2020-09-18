/*
 Meta.swift
 
 
 Created by Nolaine Crusher on 6/30/20.
 */

import Foundation

/// A class representing a `meta` atom in an `Mp4File`'s atom structure
class Meta: Atom {
    
    private var version: Data
    private var flags: Data
    
    /// Initialize a `meta` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        // hdlr and ilst are required subatoms
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw MetaAtomError.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "ilst"}) else {
            throw MetaAtomError.IlstAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload,
                       children: children)
    }
    
    /// Initialize a `meta` atom for building a metadata list
    init(children: [Atom]) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        var size: Int = 8
        for child in children {
            size += child.size
        }

        // hdlr and ilst are required subatoms
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw MetaAtomError.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "ilst"}) else {
            throw MetaAtomError.IlstAtomNotFound
        }
        
        try super.init(identifier: "meta",
                       size: size,
                       children: children)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        
        for child in self.children {
            data.append(child.encode)
        }
        return data
    }

    var hdlr: Hdlr {
        get {
            if let atom = self[.hdlr] as? Hdlr {
                return atom
            } else {
                fatalError("Required child 'hdlr' is missing from atom 'meta'")
            }
        }
        set {
            self[.hdlr] = newValue
        }
    }
    
    var ilst: Ilst {
        get {
            if let atom = self[.ilst] as? Ilst {
                return atom
            } else {
                fatalError("Required child 'ilst' is missing from atom 'meta'")
            }
        }
        set {
            self[.ilst] = newValue
        }
    }
}


enum MetaAtomError: Error {
    /// Error thrown when a required atom is missing
    case IlstAtomNotFound
    /// Error thrown when a required atom is missing
    case HdlrAtomNotFound
}
