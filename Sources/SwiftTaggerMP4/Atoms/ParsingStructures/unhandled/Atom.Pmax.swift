/*
 Pmax.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `pmax` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Pmax: Atom {

    /// Max packet size
    var bytes: UInt32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.bytes = data.extractFirst(4).uInt32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.bytes.beData)
        return data
    }
}
