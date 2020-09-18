/*
 Gmhd.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `gmhd` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Gmhd: Atom {
    
    var gmin: Gmin
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        var children = [Atom]()
        
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        if let gmin = children.first(where: {$0.identifier == "gmin"}) as? Gmin {
            self.gmin = gmin
        } else {
            throw GmhdError.GminAtomNotFound
        }

        try super.init(identifier: identifier,
                   size: size,
                   children: children)

    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode)
        }
        return data
    }
    
    private enum GmhdError: Error {
        /// Error thrown when a required atom is missing
        case GminAtomNotFound
    }
}
