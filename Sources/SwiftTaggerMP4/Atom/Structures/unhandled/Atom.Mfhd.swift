//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `mfhd` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Mfhd: Atom {

    private var versionAndFlags: Data // 4
    var sequenceNumber: Int // 4
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.sequenceNumber = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.sequenceNumber.beDataFrom32BitInt)
        return data
    }
}
