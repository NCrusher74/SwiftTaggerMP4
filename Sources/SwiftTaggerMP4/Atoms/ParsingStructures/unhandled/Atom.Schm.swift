/*
 Schm.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `schm` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Schm: Atom {

    var schemeType: UInt32
    var schemeVersion: UInt32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.schemeType = data.extractFirst(4).uInt32BE
        self.schemeVersion = data.extractFirst(4).uInt32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.schemeType.beData)
        data.append(self.schemeVersion.beData)
        return data
    }
}
