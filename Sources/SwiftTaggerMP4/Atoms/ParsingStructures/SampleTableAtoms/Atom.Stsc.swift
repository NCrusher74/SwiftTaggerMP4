/*
  Stsc.swift


  Created by Nolaine Crusher on 6/21/20.
*/

import Foundation

/// A class representing a `stsc` atom in an `Mp4File`'s atom structure
///
/// As samples are added to a media, they are collected into chunks that allow optimized data access. A chunk contains one or more samples. Chunks in a media may have different sizes, and the samples within a chunk may have different sizes. The sample-to-chunk atom stores chunk information for the samples in a media.
/// Sample-to-chunk atoms have an atom type of 'stsc'. The sample-to-chunk atom contains a table that maps samples to chunks in the media data stream. By examining the sample-to-chunk atom, you can determine the chunk that contains a specific sample.
class Stsc: Atom {
    
    private var version: Data
    private var flags: Data
    /// The count of elements in the sampleToChunk table
    var entryCount: Int
    /// A table mapping a set of data samples to a data chunk.
    ///
    /// Each chunk from `firstChunk(n)` to`firstChunk(n + 1)` will contain the same `samplesPerChunk` value.
    /// The samples will be handled according to the entry in the `stsd` atom `SampleDescriptionTable` that corresponds to the `sampleDescriptionID`
    var sampleToChunkTable: [(firstChunk: Int, samplesPerChunk: Int, sampleDescriptionID: Int)]
    
    /// Initialize a `stsc` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws  {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        var entryArray = [(firstChunk: Int, samplesPerChunk: Int, sampleDescriptionID: Int)]()
        while !data.isEmpty {
            let firstChunk = data.extractToInt(4)
            let samplesPerChunk = data.extractToInt(4)
            let sampleDescriptionID = data.extractToInt(4)
            let entry = (firstChunk, samplesPerChunk, sampleDescriptionID)
            entryArray.append(entry)
        }
        self.sampleToChunkTable = entryArray
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
        
    /// **CHAPTER TRACK ONLY** Initialize an `stsc` atom with default properties for building a chapter track
    init() throws {
        var reserve = Int()

        self.version = Atom.version
        reserve += version.count
        
        self.flags = Atom.flags
        reserve += flags.count
        
        self.entryCount = 1
        reserve += entryCount.uInt32.beData.count
        
        let defaultFirstChunk = 1.uInt32.beData
        reserve += defaultFirstChunk.count
        
        let defaultSamplesPerChunk = 1.uInt32.beData
        reserve += defaultSamplesPerChunk.count
        
        let defaultDescriptionID = 1.uInt32.beData
        reserve += defaultDescriptionID.count
        
        self.sampleToChunkTable = [(defaultFirstChunk.uInt32BE.int, defaultSamplesPerChunk.uInt32BE.int, defaultDescriptionID.uInt32BE.int)]
        
        var payload = Data()
        payload.reserveCapacity(reserve)
        
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(entryCount.uInt32.beData)
        payload.append(defaultFirstChunk)
        payload.append(defaultSamplesPerChunk)
        payload.append(defaultDescriptionID)
        let size = reserve + 8
        
        try super.init(identifier: "stsc", size: size, payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)
        
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.uInt32.beData)
        for entry in self.sampleToChunkTable {
            data.append(entry.firstChunk.uInt32.beData)
            data.append(entry.samplesPerChunk.uInt32.beData)
            data.append(entry.sampleDescriptionID.uInt32.beData)
        }
        return data
    }
}
