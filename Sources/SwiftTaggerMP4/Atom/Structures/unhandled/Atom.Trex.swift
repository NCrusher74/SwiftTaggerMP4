//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `trex` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Trex: Atom {

    private var versionAndFlags: Data // 4
    var trackID: Int // 4
    var defaultSampleDescriptionIndex: Int // 4
    var defaultSampleDuration: Int // 4
    var defaultSampleSize: Int // 4
    var defaultSampleFlags: Int // 4
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.versionAndFlags = data.extractFirst(4)
        self.trackID = data.extractFirstToInt(32)
        self.defaultSampleDescriptionIndex = data.extractFirstToInt(32)
        self.defaultSampleDuration = data.extractFirstToInt(32)
        self.defaultSampleSize = data.extractFirstToInt(32)
        self.defaultSampleFlags = data.extractFirstToInt(32)

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.trackID.beData(32))
        data.append(self.defaultSampleDescriptionIndex.beData(32))
        data.append(self.defaultSampleDuration.beData(32))
        data.append(self.defaultSampleSize.beData(32))
        data.append(self.defaultSampleFlags.beData(32))
        return data
    }
}
