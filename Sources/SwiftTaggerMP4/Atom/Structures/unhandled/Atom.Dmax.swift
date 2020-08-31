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
        self.duration = data.extractFirstToInt(32)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.duration.beData(32))
        return data
    }
}
