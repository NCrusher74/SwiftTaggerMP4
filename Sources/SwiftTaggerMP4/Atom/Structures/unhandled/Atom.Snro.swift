//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `snro` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Snro: Atom {

    var offsetValue: Int // 4
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.offsetValue = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.offsetValue.beDataFrom32BitInt)
        return data
    }
}
