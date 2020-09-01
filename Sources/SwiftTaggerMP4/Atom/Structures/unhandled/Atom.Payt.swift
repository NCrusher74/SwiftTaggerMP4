/*
 Payt.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `payt` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Payt: Atom {

    var payloadNumber: Int32
    var rtpMap: String?
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.payloadNumber = data.extractFirst(4).int32BE
        self.rtpMap = data.stringUtf8

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.payloadNumber.beData)
        if let rtpMap = self.rtpMap {
            data.append(rtpMap.encodedUtf8)
        }
        return data
    }
}
