//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/5/20.
//

import Foundation

class SampleTable {
    
    var chunkData: Data

    init(mp4File: Mp4File, track: Trak) throws {
        let stbl = track.mdia.minf.stbl
        let chunkSizes = try SampleTable.chunkSizes(stbl: stbl)
        guard chunkSizes.count == stbl.chunkOffsetAtom.chunkOffsetTable.count else {
            throw SampleTableError.ChunkSizeToChunkOffsetCountMismatch
        }
        
        let data = mp4File.data
        // Now that we know our CHUNK sizes, we can calculate the data to isolate by adding each chunk size to its corresponding offset to create a range for the data
        var mediaData = Data()
        for (index, entry) in stbl.chunkOffsetAtom.chunkOffsetTable.enumerated() {
            let startOffset = entry
            let endOffset = startOffset + chunkSizes[index]
            let range = startOffset ..< endOffset
            mediaData.append(data.subdata(in: range))
        }
        // if we did it right, the total data we've extracted should be the size of the media data (mdat) atom, minus 8 for the header data and minus any chapter title data.
        self.chunkData = mediaData
    }
    
    static func chunkSizes(stbl: Stbl) throws -> [Int] {
        let sampleToChunkTable = stbl.stsc.sampleToChunkTable
        var sampleSizeTable = [Int]()
        if stbl.stsz.sampleSize == 0 {
            sampleSizeTable = stbl.stsz.sampleSizeTable
        } else {
            var count = stbl.stsz.entryCount
            while count > 0 {
                sampleSizeTable.append(stbl.stsz.sampleSize)
                count -= 1
            }
        }
        
        var remainingSamples = sampleSizeTable
        var chunkSizes: [Int] = []
        for (index, group) in sampleToChunkTable.enumerated() {
            let knownChunks: Int
            if let nextGroup = sampleToChunkTable[index...].dropFirst().first {
                knownChunks = nextGroup.firstChunk - group.firstChunk
            } else {
                // If there is no following group,
                // we don’t know how many chunks this applies to,
                // but there must be at least one.
                knownChunks = 1
            }
            for chunk in 0 ..< knownChunks {
                print("Chunk: \(chunk + 1)")
                var chunkSize = 0
                for sample in 0 ..< group.samplesPerChunk {
                    print("Sample: \(sample + 1)")
                    guard !remainingSamples.isEmpty else {
                        throw SampleTableError.MissingSample
                    }
                    chunkSize += remainingSamples.removeFirst()
                }
                chunkSizes.append(chunkSize)
            }
        }
        // Handle any remaining chunks according to the last group.
        while !remainingSamples.isEmpty {
            guard let samples = sampleToChunkTable.last?.samplesPerChunk else {
                throw SampleTableError.MissingChunk
            }
            var chunkSize = 0
            for _ in 0 ..< samples {
                guard !remainingSamples.isEmpty else {
                    throw SampleTableError.MissingSample
                }
                chunkSize += remainingSamples.removeFirst()
            }
            chunkSizes.append(chunkSize)
        }
        return chunkSizes
    }
    
    private enum SampleTableError: Error {
        case MissingSample
        case MissingChunk
        case ChunkSizeToChunkOffsetCountMismatch
        /// Error thrown when extraction of media data fails
        case UnableToLocateMediaData
        /// Error thrown when extraction of chapter title data fails
        case UnableToLocateChapterTitleData
        /// Error thrown when creating chapter atoms fails
        case UnableToBuildChapterAtoms
    }
}
