/*
 Bitr.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `btrt` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Btrt: Atom {
    
    var bufferSizeDB: UInt32
    var averageBitrate: UInt32
    var maxBitrate: UInt32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.bufferSizeDB = data.extractFirst(4).uInt32BE
        self.averageBitrate = data.extractFirst(4).uInt32BE
        self.maxBitrate = data.extractFirst(4).uInt32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.bufferSizeDB.beData)
        data.append(self.averageBitrate.beData)
        data.append(self.maxBitrate.beData)
        return data
    }
}
