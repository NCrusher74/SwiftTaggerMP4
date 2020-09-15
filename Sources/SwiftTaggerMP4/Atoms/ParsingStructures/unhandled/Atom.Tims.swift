/*
  Tims.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `tims` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Tims: Atom {
    
    var timeScale: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.timeScale = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.timeScale.beData)
        return data
    }
}
