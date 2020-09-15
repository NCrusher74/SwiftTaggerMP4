/*
 Mfhd.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `mfhd` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Mfhd: Atom {

    private var version: Data
    private var flags: Data
    var sequenceNumber: Int32
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.sequenceNumber = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.sequenceNumber.beData)
        return data
    }
}
