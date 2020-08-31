//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `maxr` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Maxr: Atom {
    
    var granularity: UInt32 // 4
    var bytes: UInt32 // 4
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.granularity = data.extractToUInt32BE()
        self.bytes = data.extractToUInt32BE()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.granularity.beData)
        data.append(bytes.beData)
        return data
    }
}