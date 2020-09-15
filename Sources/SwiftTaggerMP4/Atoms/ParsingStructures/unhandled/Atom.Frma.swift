/*
 Frma.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `frma` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Frma: Atom {
    
    var dataFormat: Int32

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.dataFormat = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.dataFormat.beData)
        return data
    }
}
