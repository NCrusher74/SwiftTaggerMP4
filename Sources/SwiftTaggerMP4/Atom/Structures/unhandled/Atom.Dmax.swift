//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `dmax` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Dmax: Atom {
    
    /// Max packet duration in milliseconds
    var duration: Int // 4
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.duration = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.duration.beDataFrom32BitInt)
        return data
    }
}
