/*
  Smhd.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `smhd` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Smhd: Atom {

    private var version: Data
    private var flags: Data

    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        // reserved
        _ = data.extractFirst(4)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(Atom.addReserveData(4))
        return data
    }
}
