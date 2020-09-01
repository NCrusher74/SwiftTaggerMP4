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
    var entryCount: Int32
    var sampleTable: [(sampleCount: Int, sampleOffset: Int)]

    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractFirst(4).int32BE
        
        var sampleTableArray = [(sampleCount: Int, sampleOffset: Int)]()
        while !data.isEmpty {
            let sampleCount = data.extractFirst(4).int32BE.toInt
            let sampleOffset = data.extractFirst(4).int32BE.toInt
            let entry = (sampleCount, sampleOffset)
            sampleTableArray.append(entry)
        }
        self.sampleTable = sampleTableArray

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
        
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.beData)
        for entry in self.sampleTable {
            data.append(entry.sampleCount.int32.beData)
            data.append(entry.sampleOffset.int32.beData)
        }
        return data
    }
}
