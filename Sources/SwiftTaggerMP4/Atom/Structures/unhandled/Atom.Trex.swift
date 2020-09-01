/*
  Trex.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `trex` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Trex: Atom {

    private var versionAndFlags: Data
    var trackID: Int
    var defaultSampleDescriptionIndex: Int
    var defaultSampleDuration: Int
    var defaultSampleSize: Int
    var defaultSampleFlags: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.versionAndFlags = data.extractFirst(4)
        self.trackID = data.extractTo32BitInt()
        self.defaultSampleDescriptionIndex = data.extractTo32BitInt()
        self.defaultSampleDuration = data.extractTo32BitInt()
        self.defaultSampleSize = data.extractTo32BitInt()
        self.defaultSampleFlags = data.extractTo32BitInt()

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.trackID.beDataFrom32BitInt)
        data.append(self.defaultSampleDescriptionIndex.beDataFrom32BitInt)
        data.append(self.defaultSampleDuration.beDataFrom32BitInt)
        data.append(self.defaultSampleSize.beDataFrom32BitInt)
        data.append(self.defaultSampleFlags.beDataFrom32BitInt)
        return data
    }
}
