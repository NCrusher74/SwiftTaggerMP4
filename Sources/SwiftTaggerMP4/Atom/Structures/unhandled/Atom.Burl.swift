/*
 Burl.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `burl` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Burl: Atom {
    
    var baseUrl: String?
    
    override init(identifier: String, size: Int, payload: Data) throws {
        let data = payload
        self.baseUrl = data.stringUtf8
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }

    override var contentData: Data {
        var data = Data()
        if let baseUrl = self.baseUrl {
            data.append(baseUrl.encodedUtf8)
        }
        return data
    }
}
