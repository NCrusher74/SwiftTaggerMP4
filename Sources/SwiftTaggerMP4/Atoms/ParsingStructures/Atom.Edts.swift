/*
 Edts.swift
 
 
 Created by Nolaine Crusher on 6/30/20.
 */

import Foundation

/// A class representing a `edts` atom in an `Mp4File`'s atom structure
class Edts: Atom {
    /// Initialize a `edts` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        guard children.contains(where: {$0.identifier == "elst"}) else {
            throw EdtsError.ElstAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)
        data.append(contentsOf: children.flatMap({$0.encode}))
        
        return data
    }
    
    private enum EdtsError: Error {
        /// Error thrown when a required atom is missing
        case ElstAtomNotFound
    }
    
    var elst: Elst {
        get {
            if let atom = self[.elst] as? Elst {
                return atom
            } else {
                fatalError("Required child 'elst' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.elst] = newValue
        }
    }
}
