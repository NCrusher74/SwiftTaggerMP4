//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `bitr` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Bitr: Atom {
    
    var averageBitrate: Int
    var maxBitrate: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.averageBitrate = data.extractFirstToInt(32)
        self.maxBitrate = data.extractFirstToInt(32)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.averageBitrate.beData(32))
        data.append(self.maxBitrate.beData(32))
        return data
    }
}
