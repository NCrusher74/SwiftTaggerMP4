/*
  Traf.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `traf` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Traf: Atom {
    
    var tfhd: Tfhd
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }
        
        if let tfhd = children.first(where: {$0.identifier == "tfhd"}) as? Tfhd {
            self.tfhd = tfhd
        } else {
            throw TrafError.TfhdAtomNotFound
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
    
    private enum TrafError: Error {
        /// Error thrown when a required atom is missing
        case TfhdAtomNotFound
    }
}
