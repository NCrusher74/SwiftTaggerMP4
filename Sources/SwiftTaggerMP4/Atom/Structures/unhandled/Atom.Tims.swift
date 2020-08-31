//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `tims` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Tims: Atom {
    
    var timeScale: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.timeScale = data.extractFirstToInt(32)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.timeScale.beData(32))
        return data
    }
}
