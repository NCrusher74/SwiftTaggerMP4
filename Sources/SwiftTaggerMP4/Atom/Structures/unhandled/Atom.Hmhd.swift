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
    
    private var version: Data
    private var flags: Data
    var maxPduSize: Int16
    var averagePduSize: Int16
    var maxBitrate: Int32
    var averageBitrate: Int32
    var slidingAverageBitrate: Int32

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.maxPduSize = data.extractFirst(2).int16BE
        self.averagePduSize  = data.extractFirst(2).int16BE
        self.maxBitrate = data.extractFirst(4).int32BE
        self.averageBitrate = data.extractFirst(4).int32BE
        self.slidingAverageBitrate = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.maxPduSize.beData)
        data.append(averagePduSize.beData)
        data.append(maxBitrate.beData)
        data.append(averageBitrate.beData)
        data.append(slidingAverageBitrate.beData)
        return data
    }
}
