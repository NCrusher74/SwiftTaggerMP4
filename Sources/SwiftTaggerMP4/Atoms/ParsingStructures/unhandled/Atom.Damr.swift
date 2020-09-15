/*
  Damr.swift
  

  Created by Nolaine Crusher on 9/1/20.
*/

import Foundation

/// A class representing a `damr` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Damr: Atom {
    
    var vendor: Int32
    var decoderVersion: Int8
    var modeSet: Int16
    var modeChangePeriod: Int8
    var framesPerSample: Int8
    
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        self.vendor = data.extractFirst(4).int32BE
        self.decoderVersion = data.extractFirst(1).int8BE
        self.modeSet = data.extractFirst(2).int16BE
        self.modeChangePeriod = data.extractFirst(1).int8BE
        self.framesPerSample = data.extractFirst(1).int8BE
        
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
