/*
 Drep.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `drep` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Drep: Atom {
    
    /// Bytes of repeated data
    var bytes: Int64

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.bytes = data.extractFirst(8).int64BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.bytes.beData)
        return data
    }
}
