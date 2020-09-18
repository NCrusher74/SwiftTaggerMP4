/*
  Dinf.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `dinf` atom in an `Mp4File`'s atom structure
class Dinf: Atom {
    /// Initialize a `dinf` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        guard children.contains(where: {$0.identifier == "dref"}) else {
            throw DinfError.DrefAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `dinf` atom for building a chapter track
    init(from dref: Dref) throws {
        let size: Int = 8 + dref.size
        try super.init(identifier: "dinf",
                       size: size,
                       children: [dref])
        
        var childIDs = [String]()
        for child in children {
            childIDs.append(child.identifier)
        }
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode)
        }
        return data
    }
    
    var dref: Dref {
        get {
            if let atom = self[.dref] as? Dref {
                return atom
            } else {
                fatalError("Required child 'dref' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.dref] = newValue
        }
    }

    private enum DinfError: Error {
        /// Error thrown when a required atom is missing
        case DrefAtomNotFound
    }
}
