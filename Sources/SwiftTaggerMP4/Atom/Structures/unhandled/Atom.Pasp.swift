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

    var hSpacing: UInt32
    var vSpacing: UInt32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.hSpacing = data.extractToUInt32BE()
        self.vSpacing = data.extractToUInt32BE()
        
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
