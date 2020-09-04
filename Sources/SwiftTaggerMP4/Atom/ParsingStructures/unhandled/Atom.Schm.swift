/*
 Schm.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `schm` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Schm: Atom {

    var schemeType: Int32
    var schemeVersion: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.schemeType = data.extractFirst(4).int32BE
        self.schemeVersion = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.schemeType.beData)
        data.append(self.schemeVersion.beData)
        return data
    }
}
