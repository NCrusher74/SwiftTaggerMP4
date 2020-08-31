//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `pmax` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Pmax: Atom {

    /// Max packet size
    var bytes: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.bytes = data.extractFirstToInt(4)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.bytes.beData(32))
        return data
    }
}