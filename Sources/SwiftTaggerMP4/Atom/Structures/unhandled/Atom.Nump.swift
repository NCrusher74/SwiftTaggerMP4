//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `nump` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Nump: Atom {

    /// Packets sent
    var packets: Int // 8
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.packets = data.extractFirstToInt(8)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.packets.beData(64))
        return data
    }
}