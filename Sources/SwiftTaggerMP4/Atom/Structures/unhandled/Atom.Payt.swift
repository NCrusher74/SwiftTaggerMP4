//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `payt` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Payt: Atom {

    var payloadNumber: Int // 4
    var rtpMap: String
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.payloadNumber = data.extractFirstToInt(32)
        self.rtpMap = String(decoding: data, as: UTF8.self)

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.payloadNumber.beData(32))
        data.append(Data(self.rtpMap.utf8))
        return data
    }
}
