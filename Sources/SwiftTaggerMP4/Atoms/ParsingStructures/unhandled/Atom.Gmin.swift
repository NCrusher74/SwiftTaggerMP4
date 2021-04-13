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

    var graphicsMode: UInt16
    var opColorRed: UInt16
    var opColorGreen: UInt16
    var opColorBlue: UInt16
    var balance: UInt16

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.graphicsMode = data.extractFirst(2).uInt16BE
        self.opColorRed = data.extractFirst(2).uInt16BE
        self.opColorGreen = data.extractFirst(2).uInt16BE
        self.opColorBlue = data.extractFirst(2).uInt16BE
        self.balance = data.extractFirst(2).uInt16BE
        _ = data.extractFirst(2)

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.graphicsMode.beData)
        data.append(self.opColorRed.beData)
        data.append(self.opColorGreen.beData)
        data.append(self.opColorBlue.beData)
        data.append(self.balance.beData)
        data.append(Atom.addReserveData(2))
        return data
    }
}
