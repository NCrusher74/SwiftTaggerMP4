//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `stsh` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Stsh: Atom {

    private var versionAndFlags: Data // 4
    var entryCount: Int // 4
    var sampleTable: SampleTable
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractFirstToInt(32)
        self.sampleTable = SampleTable(from: data)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    class SampleTable {
        var entries: [(shadowedSampleNumber: Int, syncSampleNumber: Int)]
        
        init(from data: Data) {
            var remainder = data
            var entryArray: [(shadowedSampleNumber: Int, syncSampleNumber: Int)] = []
            while !remainder.isEmpty {
                let shadowSampleNumber = remainder.extractFirstToInt(32)
                let syncSampleNumber = remainder.extractFirstToInt(32)
                let entry = (shadowSampleNumber, syncSampleNumber)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        var entryData: Data {
            var data = Data()
            for entry in self.entries {
                data.append(entry.shadowedSampleNumber.beData(32))
                data.append(entry.syncSampleNumber.beData(32))
            }
            return data
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beData(32))
        data.append(self.sampleTable.entryData)
        return data
    }
}
