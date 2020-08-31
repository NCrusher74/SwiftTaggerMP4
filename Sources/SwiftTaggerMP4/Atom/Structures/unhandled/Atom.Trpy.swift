//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `trpy` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Trpy: Atom {

    /// bytes sent including RTP headers
    var bytes: Int // 8
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.bytes = data.extractTo64BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.bytes.beDataFrom64BitInt)
        return data
    }
}
