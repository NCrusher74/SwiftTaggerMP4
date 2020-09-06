/*
 Maxr.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `maxr` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Maxr: Atom {
    
    var granularity: Int32
    var bytes: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.granularity = data.extractFirst(4).int32BE
        self.bytes = data.extractFirst(4).int32BE
        
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
