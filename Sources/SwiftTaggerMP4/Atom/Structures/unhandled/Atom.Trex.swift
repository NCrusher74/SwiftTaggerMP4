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
    var trackID: Int32
    var defaultSampleDescriptionIndex: Int32
    var defaultSampleDuration: Int32
    var defaultSampleSize: Int32
    var defaultSampleFlags: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.trackID = data.extractFirst(4).int32BE
        self.defaultSampleDescriptionIndex = data.extractFirst(4).int32BE
        self.defaultSampleDuration = data.extractFirst(4).int32BE
        self.defaultSampleSize = data.extractFirst(4).int32BE
        self.defaultSampleFlags = data.extractFirst(4).int32BE
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
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
