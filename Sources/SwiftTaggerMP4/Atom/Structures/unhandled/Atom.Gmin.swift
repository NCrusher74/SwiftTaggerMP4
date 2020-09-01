/*
 Gmin.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `gmin` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Gmin: Atom {

    var graphicsMode: Int16
    var opColorRed: Int16
    var opColorGreen: Int16
    var opColorBlue: Int16
    var balance: Int16

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.graphicsMode = data.extractFirst(2).int16BE
        self.opColorRed = data.extractFirst(2).int16BE
        self.opColorGreen = data.extractFirst(2).int16BE
        self.opColorBlue = data.extractFirst(2).int16BE
        self.balance = data.extractFirst(2).int16BE
        _ = data.extractFirst(2)

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.graphicsMode.beData)
        data.append(self.opColorRed.beData)
        data.append(self.opColorGreen.beData)
        data.append(self.opColorBlue.beData)
        data.append(self.balance.beData)
        data.append(addReserveData(2))
        return data
    }
}
