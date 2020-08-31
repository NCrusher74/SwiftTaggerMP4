//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `frma` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Frma: Atom {
    
    var dataFormat: UInt32 // 4

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.dataFormat = data.extractToUInt32BE()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.dataFormat.beData)
        return data
    }
}
