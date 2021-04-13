/*
  Trex.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `trex` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Trex: Atom {

    private var version: Data
    private var flags: Data
    var trackID: UInt32
    var defaultSampleDescriptionIndex: UInt32
    var defaultSampleDuration: UInt32
    var defaultSampleSize: UInt32
    var defaultSampleFlags: UInt32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.trackID = data.extractFirst(4).uInt32BE
        self.defaultSampleDescriptionIndex = data.extractFirst(4).uInt32BE
        self.defaultSampleDuration = data.extractFirst(4).uInt32BE
        self.defaultSampleSize = data.extractFirst(4).uInt32BE
        self.defaultSampleFlags = data.extractFirst(4).uInt32BE
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.trackID.beData)
        data.append(self.defaultSampleDescriptionIndex.beData)
        data.append(self.defaultSampleDuration.beData)
        data.append(self.defaultSampleSize.beData)
        data.append(self.defaultSampleFlags.beData)
        return data
    }
}
