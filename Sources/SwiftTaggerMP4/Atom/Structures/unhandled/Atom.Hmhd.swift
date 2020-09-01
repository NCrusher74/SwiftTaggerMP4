/*
 Hmhd.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `hmhd` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Hmhd: Atom {
    
    private var versionAndFlags: Data
    var maxPduSize: Int
    var averagePduSize: Int
    var maxBitrate: Int
    var averageBitrate: Int
    var slidingAverageBitrate: Int

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.maxPduSize = data.extractTo16BitInt()
        self.averagePduSize  = data.extractTo16BitInt()
        self.maxBitrate = data.extractTo32BitInt()
        self.averageBitrate = data.extractTo32BitInt()
        self.slidingAverageBitrate = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.maxPduSize.beDataFrom16BitInt)
        data.append(averagePduSize.beDataFrom16BitInt)
        data.append(maxBitrate.beDataFrom32BitInt)
        data.append(averageBitrate.beDataFrom32BitInt)
        data.append(slidingAverageBitrate.beDataFrom32BitInt)
        return data
    }
}
