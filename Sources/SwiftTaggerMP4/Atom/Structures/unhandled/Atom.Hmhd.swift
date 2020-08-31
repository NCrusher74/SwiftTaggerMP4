//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `hmhd` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Hmhd: Atom {
    
    private var versionAndFlags: Data // 4
    var maxPduSize: Int // 2
    var averagePduSize: Int // 2
    var maxBitrate: Int // 4
    var averageBitrate: Int // 4
    var slidingAverageBitrate: Int // 4

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.maxPduSize = data.extractFirstToInt(2)
        self.averagePduSize  = data.extractFirstToInt(2)
        self.maxBitrate = data.extractFirstToInt(32)
        self.averageBitrate = data.extractFirstToInt(32)
        self.slidingAverageBitrate = data.extractFirstToInt(32)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.maxPduSize.beData(16))
        data.append(averagePduSize.beData(16))
        data.append(maxBitrate.beData(32))
        data.append(averageBitrate.beData(32))
        data.append(slidingAverageBitrate.beData(32))
        return data
    }
}
