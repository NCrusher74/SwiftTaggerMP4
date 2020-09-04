//
//  File.swift
//
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation

struct SampleTableToChapterConverter {

    private var mediaData: Data
    private var initialMediaOffset: Int
    var chapters: [Int: Chapter]

    init(readFrom mp4File: Mp4File) throws {
        self.initialMediaOffset = try mp4File.getInitialMediaOffset()
        self.mediaData = try mp4File.isolateMediaData()
        
    }

    struct Chapter {
        var title: String
    }

    /// Sorts chapters into chronological order by `startTime` and returns an array of `(startTime: Chapter)` tuples
    func sortedChapters() -> [(startTime: Int, chapter: Chapter)] {
        return chapters.keys.sorted().map { ($0, chapters[$0]!) }
    }
}

extension Mp4File {
    func getInitialMediaOffset() throws -> Int {
        let chunkOffsets = self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.chunkOffsetTable
        if let first = chunkOffsets.first {
            return first
        } else {
            throw Mp4File.Error.UnableToLocateMediaData
        }
    }
    
    // this is a torturous, convoluted mess of a function but necessary for files where the media data is not stored in consecutive, uninterrupted chunks
    func isolateMediaData() throws -> Data {
        // https://developer.apple.com/library/archive/documentation/QuickTime/QTFF/QTFFChap2/qtff2.html#//apple_ref/doc/uid/TP40000939-CH204-BBCIDAFD
        let stsc = self.moov.soundTrack.mdia.minf.stbl.stsc
        // https://developer.apple.com/library/archive/documentation/QuickTime/QTFF/QTFFChap2/qtff2.html#//apple_ref/doc/uid/TP40000939-CH204-BBCBBCGB
        let stsz = self.moov.soundTrack.mdia.minf.stbl.stsz
        // https://developer.apple.com/library/archive/documentation/QuickTime/QTFF/QTFFChap2/qtff2.html#//apple_ref/doc/uid/TP40000939-CH204-BBCHAEEA
        let stco = self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom
        
        // [(firstChunk: Int, samplesPerChunk: Int, sampleDescriptionID: Int)]
        // firstChunk is the index of the chunkOffsetTable where each entry begins
        // samplesPerChunk is the number of entries in the sampleSizeTable that make up each chunk from the current firstChunk to the next firstChunk
        // We can safely ignore the description, I believe
        let sampleToChunkTable = stsc.sampleToChunkTable
        // [Int]
        // the sampleSize is the byte-count of each sample.
        let sampleSizeTable = stsz.sampleSizeTable
        // [Int]
        // the chunk offset is the beginning of the chunk in the FILE data, irrespective of atom structure
        let chunkOffsetTable = stco.chunkOffsetTable
        
        // this will keep track of where we pick up when we interate through the samplesPerChunk entries
        var newSampleIndex = Int()
        // this is the array of sizes we need to build to pull this all together
        var chunkSizes = [Int]()
        
        // handle all but the last
        for (index, entry) in sampleToChunkTable.enumerated().dropLast() {
            // the number of loops we need to perform within the current iteration is the difference between the next firstChunk and the current firstChunk, because we need to do one loop for each chunk
            var loopsRequired = Int()
            let nextEntry = sampleToChunkTable[sampleToChunkTable.index(after: index)]
            let nextChunk = nextEntry.firstChunk
            loopsRequired = nextChunk - entry.firstChunk
            // we will count "down" to zero each time we loop through this section
            while loopsRequired > 0 {
                // this is the samplesPerChunk value for the current table entry
                let samplesPerChunk = entry.samplesPerChunk
                
                // we will start at the beginning of the sampleSizeTable and create a range from the current number of samples per chunk
                let samplesStart = newSampleIndex
                let samplesEnd = samplesStart + samplesPerChunk
                let range = samplesStart ..< samplesEnd
                let sample = sampleSizeTable[range]
                // since each sample size is the byte-count of the sample, we can calculate the byte-count of each chunk by adding the byte-count of each sample within the samples-per-chunk range
                let sampleSum = sample.sum()
                // add the sum to our array
                chunkSizes.append(sampleSum)
                // update the samplesStart index
                newSampleIndex = samplesEnd
                // decremement our loop-count by 1
                loopsRequired -= 1
            }
            // reset our required number of loops for the next iteration
            loopsRequired = Int()
        }
        // handle last
        if let lastEntry = sampleToChunkTable.last {
            let lastSamplesPerChunkEntry = lastEntry.samplesPerChunk
            // we get the start of the final range by subtracting the number of samples in this final chunk from the endIndex of the sampleSizeTable
            let rangeStart = sampleSizeTable.endIndex - lastSamplesPerChunkEntry
            let rangeEnd = sampleSizeTable.endIndex
            let range = rangeStart ..< rangeEnd
            let sample = sampleSizeTable[range]
            let sampleSum = sample.sum()
            // append it too the array
            chunkSizes.append(sampleSum)
        }
        // make sure we did it right
        guard chunkSizes.count == chunkOffsetTable.count else {
            throw Mp4File.Error.UnableToLocateMediaData
        }
        
        // Now that we know our CHUNK sizes, we can calculate the data to isolate by adding each chunk size to its corresponding offset to create a range for the data
        var audioData = Data()
        for (index, entry) in chunkOffsetTable.enumerated() {
            let startOffset = entry
            let endOffset = startOffset + chunkSizes[index]
            let range = startOffset ..< endOffset
            audioData.append(self.fileData.subdata(in: range))
        }
        // if we did it right, the total data we've extracted should be the size of the media data (mdat) atom, minus 8 for the header data and minus any chapter title data.
        return audioData
    }
}
