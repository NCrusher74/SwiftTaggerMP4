/*
  Subatoms.Dref.swift


  Created by Nolaine Crusher on 7/26/20.
*/

import Foundation

/// A class representing the child atoms of a `dref` atom in an `Mp4File`'s atom structure
class DrefSubatom: Atom {
    
    var version: Data
    var flags: Data
    var data: Data
    
    /// Initialize a dref child atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.data = data
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.data)
        return data
    }
}
