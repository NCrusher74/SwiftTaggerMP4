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

    var payloadNumber: Int
    var rtpMap: String
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.payloadNumber = data.extractTo32BitInt()
        self.rtpMap = String(decoding: data, as: UTF8.self)

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.payloadNumber.beDataFrom32BitInt)
        data.append(Data(self.rtpMap.utf8))
        return data
    }
}
