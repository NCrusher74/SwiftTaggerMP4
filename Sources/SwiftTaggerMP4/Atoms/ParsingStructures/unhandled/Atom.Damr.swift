/*
  Damr.swift
  

  Created by Nolaine Crusher on 9/1/20.
*/

import Foundation

/// A class representing a `damr` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Damr: Atom {
    
    var vendor: UInt32
    var decoderVersion: UInt8
    var modeSet: UInt16
    var modeChangePeriod: UInt8
    var framesPerSample: UInt8
    
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        self.vendor = data.extractFirst(4).uInt32BE
        self.decoderVersion = data.extractFirst(1).uInt8BE
        self.modeSet = data.extractFirst(2).uInt16BE
        self.modeChangePeriod = data.extractFirst(1).uInt8BE
        self.framesPerSample = data.extractFirst(1).uInt8BE
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.vendor.beData)
        data.append(self.decoderVersion.beData)
        data.append(self.modeSet.beData)
        data.append(self.modeChangePeriod.beData)
        data.append(self.framesPerSample.beData)
        return data
    }
}
