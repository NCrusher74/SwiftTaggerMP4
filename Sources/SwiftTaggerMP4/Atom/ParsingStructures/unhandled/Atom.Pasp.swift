/*
 Pasp.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `pasp` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Pasp: Atom {

    var hSpacing: Int32
    var vSpacing: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.hSpacing = data.extractFirst(4).int32BE
        self.vSpacing = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.hSpacing.beData)
        data.append(self.vSpacing.beData)
        return data
    }
}
