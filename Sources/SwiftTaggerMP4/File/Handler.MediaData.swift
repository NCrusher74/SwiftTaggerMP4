//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/5/20.
//

import Foundation

struct MediaDataHandler {
    
    var newOffsets: [Int]
    var newMdat: Mdat
    
    init(mp4File: Mp4File) throws {
        let stbl = mp4File.moov.soundTrack.mdia.minf.stbl
        let chunkSizes = try MediaDataHandler.chunkSizes(stbl: stbl)
        guard chunkSizes.count == stbl.chunkOffsetAtom.chunkOffsetTable.count else {
            throw MediaDataHandlerError.ChunkSizeToChunkOffsetCountMismatch
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
        
        self.newMdat = try MediaDataHandler.newMdatAtom(data: mediaData)
        self.newOffsets = try MediaDataHandler.newOffsetArray(
            mp4: mp4File,
            stbl: stbl,
            chunkSizes: chunkSizes)
    }
    
    private static func newMdatAtom(data: Data) throws -> Mdat {
        var preliminaryMdatSize = data.count + 8
        let size: Int
        if preliminaryMdatSize > Int32.max {
            size = 0
            preliminaryMdatSize += 8
        } else {
            size = preliminaryMdatSize
        }
        
        let mdatPayload: Data
        if size == 0 {
            mdatPayload = preliminaryMdatSize.int64.beData + data
        } else {
            mdatPayload = data
        }
        
        let newMdat = try Mdat(identifier: "mdat",
                               size: size,
                               payload: mdatPayload)
        return newMdat
    }
    
    private static func chunkSizes(stbl: Stbl) throws -> [Int] {
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
            for _ in 0 ..< knownChunks {
                var chunkSize = 0
                for _ in 0 ..< group.samplesPerChunk {
                    guard !remainingSamples.isEmpty else {
                        throw MediaDataHandlerError.MissingSample
                    }
                    chunkSize += remainingSamples.removeFirst()
                }
                chunkSizes.append(chunkSize)
            }
        }
        // Handle any remaining chunks according to the last group.
        while !remainingSamples.isEmpty {
            guard let samples = sampleToChunkTable.last?.samplesPerChunk else {
                throw MediaDataHandlerError.MissingChunk
            }
            var chunkSize = 0
            for _ in 0 ..< samples {
                guard !remainingSamples.isEmpty else {
                    throw MediaDataHandlerError.MissingSample
                }
                chunkSize += remainingSamples.removeFirst()
            }
            chunkSizes.append(chunkSize)
        }
        return chunkSizes
    }

    private static func newOffsetArray(mp4: Mp4File, stbl: Stbl, chunkSizes: [Int]) throws -> [Int] {
        // isolate the atoms that will come BEFORE the media atom, and get rid of any unused space-holding atoms to clean things up
        let filteredAtoms = mp4.rearrangedRootAtoms.filter({$0.identifier != "mdat" &&
            $0.identifier != "moov" &&
            $0.identifier != "free" &&
            $0.identifier != "skip" &&
            $0.identifier != "wide"})
        var newMediaDataStartingOffset = 8 // to account for mdat size and identifier bytes
        for atom in filteredAtoms {
            newMediaDataStartingOffset += atom.encode().count
        }
        
        // we already know our first offset
        var offsets = [newMediaDataStartingOffset]
        // we don't need the last one, as it would be an offset to nothing
        var offset = newMediaDataStartingOffset
        for chunkSize in chunkSizes.dropLast() {
            let newOffset = offset + chunkSize
            offsets.append(newOffset)
            offset = newOffset
        }
        
        guard offsets.count == stbl.chunkOffsetAtom.chunkOffsetTable.count else {
            throw MediaDataHandlerError.NewChunkOffsetArrayCountMismatch
        }
        
        return offsets
    }
    
    private enum MediaDataHandlerError: Error {
        case MissingSample
        case MissingChunk
        case ChunkSizeToChunkOffsetCountMismatch
        case NewChunkOffsetArrayCountMismatch
    }
}
