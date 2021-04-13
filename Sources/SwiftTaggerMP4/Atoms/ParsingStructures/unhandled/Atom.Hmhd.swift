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
    var maxPduSize: UInt16
    var averagePduSize: UInt16
    var maxBitrate: UInt32
    var averageBitrate: UInt32
    var slidingAverageBitrate: UInt32

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.maxPduSize = data.extractFirst(2).uInt16BE
        self.averagePduSize  = data.extractFirst(2).uInt16BE
        self.maxBitrate = data.extractFirst(4).uInt32BE
        self.averageBitrate = data.extractFirst(4).uInt32BE
        self.slidingAverageBitrate = data.extractFirst(4).uInt32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
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
