//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `ctts` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Ctts: Atom {
    
    private var versionAndFlags: Data
    var entryCount: Int
    var sampleTable: SampleTable

    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractTo32BitInt()
        self.sampleTable = SampleTable(from: data)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    class SampleTable {
        var entries: [(sampleCount: Int, sampleOffset: Int)]
        
        init(from data: Data) {
            var remainder = data
            var entryArray: [(sampleCount: Int, sampleOffset: Int)] = []
            while !remainder.isEmpty {
                let sampleCount = remainder.extractTo32BitInt()
                let sampleOffset = remainder.extractTo32BitInt()
                let entry = (sampleCount, sampleOffset)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        var entryData: Data {
            var data = Data()
            for entry in self.entries {
                data.append(entry.sampleCount.beDataFrom32BitInt)
                data.append(entry.sampleOffset.beDataFrom32BitInt)
            }
            return data
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beDataFrom32BitInt)
        data.append(self.sampleTable.entryData)
        return data
    }
}
