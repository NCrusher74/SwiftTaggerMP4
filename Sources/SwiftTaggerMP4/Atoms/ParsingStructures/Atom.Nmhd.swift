/*
  Nmhd.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `nmhd` atom in an `Mp4File`'s atom structure
class Nmhd: Atom {
    private var version: Data
    private var flags: Data
    
    /// Initialize a `nmhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize an `nmhd` atom for building a chapter track
    init() throws {
        self.version = Atom.version
        self.flags = Atom.flags
        try super.init(identifier: "nmhd", size: 12, payload: (self.version + self.flags))
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        return data
    }
}
