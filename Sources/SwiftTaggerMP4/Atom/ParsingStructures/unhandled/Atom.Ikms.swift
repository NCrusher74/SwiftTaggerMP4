/*
 Ikms.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `ikms` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Ikms: Atom {
    
    private var version: Data
    private var flags: Data
    var kms_Uri: String?

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.kms_Uri = data.stringUtf8
        
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        if let kms_Uri = self.kms_Uri {
            data.append(kms_Uri.encodedUtf8)
        }        
        return data
    }
}
