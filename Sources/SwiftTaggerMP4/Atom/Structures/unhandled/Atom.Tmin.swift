//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `tmin` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Tmin: Atom {
    
    /// Minimum relative transmit time in milliseconds
    var milliseconds: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.milliseconds = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.milliseconds.beDataFrom32BitInt)
        return data
    }
}
