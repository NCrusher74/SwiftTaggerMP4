/*
 Bitr.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `bitr` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Bitr: Atom {
    
    var averageBitrate: Int32
    var maxBitrate: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.averageBitrate = data.extractFirst(4).int32BE
        self.maxBitrate = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.averageBitrate.beData)
        data.append(self.maxBitrate.beData)
        return data
    }
}
