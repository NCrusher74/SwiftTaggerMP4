//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/21/20.
//

import Foundation

/// A class representing a `stsc` atom in an `Mp4File`'s atom structure
/** As samples are added to a media, they are collected into chunks that allow optimized data access. A chunk contains one or more samples. Chunks in a media may have different sizes, and the samples within a chunk may have different sizes. The sample-to-chunk atom stores chunk information for the samples in a media.
 
 Sample-to-chunk atoms have an atom type of 'stsc'. The sample-to-chunk atom contains a table that maps samples to chunks in the media data stream. By examining the sample-to-chunk atom, you can determine the chunk that contains a specific sample.
 
 *NOTE* For the purposes of chaptering, we probably won't need this atom, but it's here just in case. */
class Stsc: Atom {
    
    private var versionAndFlags: Data // 4
    var entryCount: Int // 4 bytes
    var sampleToChunkTable: SampleToChunkTable
    
    /// Initialize a `stsc` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws  {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractFirstToInt(32)
        self.sampleToChunkTable = SampleToChunkTable(from: data)
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    struct SampleToChunkTable {
        var entries: [(firstChunk: Int, samplesPerChunk: Int, sampleDescriptionID: Int)]
        
        init(from data: Data) {
            var remainder = data
            var entryArray: [(firstChunk: Int, samplesPerChunk: Int, sampleDescriptionID: Int)] = []
            
            while !remainder.isEmpty {
                let firstChunk = remainder.extractFirstToInt(32)
                
                let samplesPerChunk = remainder.extractFirstToInt(32)
                
                let sampleDescriptionID = remainder.extractFirstToInt(32)
                
                let entry = (firstChunk, samplesPerChunk, sampleDescriptionID)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        var entryData: Data {
            var data = Data()
            for entry in entries {
                data.append(entry.firstChunk.beData(32))
                data.append(entry.samplesPerChunk.beData(32))
                data.append(entry.sampleDescriptionID.beData(32))
            }
            return data
        }
    }
    
    /// Initialize an `stsc` atom with default properties for building a chapter track
    init() throws {
        self.versionAndFlags = Data(repeating: 0x00, count: 4)
        self.entryCount = 1
        let defaultFirstChunk: [UInt8] = [0x00, 0x00, 0x00, 0x01]
        let defaultSamplesPerChunk: [UInt8] = [0x00, 0x00, 0x00, 0x01]
        let defaultDescriptionID: [UInt8] = [0x00, 0x00, 0x00, 0x01]
        var defaultTableData = Data()
        defaultTableData.append(contentsOf: defaultFirstChunk)
        defaultTableData.append(contentsOf: defaultSamplesPerChunk)
        defaultTableData.append(contentsOf: defaultDescriptionID)
        self.sampleToChunkTable = SampleToChunkTable(from: defaultTableData)
        
        var payload = Data()
        payload.append(versionAndFlags)
        payload.append(entryCount.beData(32))
        payload.append(defaultTableData)
        let size = payload.count + 8
        
        try super.init(identifier: "stsc", size: size, payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beData(32))
        data.append(self.sampleToChunkTable.entryData)
        return data
    }
}