/*
 Pinf.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `pinf` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Pinf: Atom {
    
    var frma: Frma
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }
        if let frma = children.first(where: {$0.identifier == "frma"}) as? Frma {
            self.frma = frma
        } else {
            throw InformationAtomError.FrmaAtomNotFound
        }

        try super.init(identifier: identifier,
                   size: size,
                   children: children)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
}

enum InformationAtomError: Error {
    /// Error thrown when a required atom is missing
    case FrmaAtomNotFound
}
