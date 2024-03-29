/*
 Ctts.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `ctts` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Ctts: Atom {
    
    private var version: Data
    private var flags: Data
    var entryCount: UInt32
    var sampleTable: [(sampleCount: Int, sampleOffset: Int)]

    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractFirst(4).uInt32BE
        
        var sampleTableArray = [(sampleCount: Int, sampleOffset: Int)]()
        while !data.isEmpty {
            let sampleCount = data.extractToInt(4)
            let sampleOffset = data.extractToInt(4)
            let entry = (sampleCount, sampleOffset)
            sampleTableArray.append(entry)
        }
        self.sampleTable = sampleTableArray

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
        
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.beData)
        for entry in self.sampleTable {
            data.append(entry.sampleCount.uInt32.beData)
            data.append(entry.sampleOffset.uInt32.beData)
        }
        return data
    }
}
