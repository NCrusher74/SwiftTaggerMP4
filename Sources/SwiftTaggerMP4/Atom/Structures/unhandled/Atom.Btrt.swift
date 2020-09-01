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
    
    var bufferSizeDB: Int
    var averageBitrate: Int
    var maxBitrate: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.bufferSizeDB = data.extractTo32BitInt()
        self.averageBitrate = data.extractTo32BitInt()
        self.maxBitrate = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.bufferSizeDB.beDataFrom32BitInt)
        data.append(self.averageBitrate.beDataFrom32BitInt)
        data.append(self.maxBitrate.beDataFrom32BitInt)
        return data
    }
}
