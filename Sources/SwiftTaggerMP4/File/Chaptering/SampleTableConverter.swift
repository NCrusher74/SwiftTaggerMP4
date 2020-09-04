//
//  File.swift
//
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation

struct SampleTableToChapterConverter {

    var mediaData: Data
    var initialMediaOffset: Int
    var chapters: [Int: Chapter]

    init(readFrom mp4File: Mp4File) throws {
        self.initialMediaOffset = try mp4File.getInitialMediaOffset()
        self.mediaData = try mp4File.isolateMediaData(forTrack: .soun)
        
        var chapters = [Int: Chapter]()
        if let chpl = mp4File.moov.udta?.chpl {
            let chapterTable = chpl.chapterTable
            for chapter in chapterTable {
                let title = chapter.title
                let convertedChapter = Chapter(title: title)
                let startTime = chapter.startTime
                chapters[startTime] = convertedChapter
            }
            self.chapters = chapters
        } else {
            let startTimes = mp4File.calculateChapterStarts()
            var titles = try mp4File.getChapterTitleStrings()
            
            if startTimes.isEmpty {
                self.chapters = [:]
            } else {
                if startTimes.count > titles.count {
                    var difference = startTimes.count - titles.count
                    while difference > 0 {
                        titles.append("Untitled Chapter")
                        difference -= 1
                    }
                }
                
                for (index, start) in startTimes.enumerated() {
                    let chapter = Chapter(title: titles[index])
                    chapters[start] = chapter
                }
                self.chapters = chapters
            }
        }
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
    
    // this is a torturous, unholy, convoluted mess of a function but necessary for files where the media data is not stored in consecutive, uninterrupted chunks
    func isolateMediaData(forTrack trackType: TrackType) throws -> Data {
        var track: Trak? = nil
        if trackType == .soun {
            track = self.moov.soundTrack
        } else if trackType == .text {
            track = self.moov.chapterTrack
        } else {
            throw Mp4File.Error.UnsupportedTrackType
        }
        
        if let track = track {
            let stsc = track.mdia.minf.stbl.stsc
            let stsz = track.mdia.minf.stbl.stsz
            let stco = track.mdia.minf.stbl.chunkOffsetAtom
            
            // firstChunk is the index of the chunkOffsetTable where each entry begins
            // samplesPerChunk is the number of entries in the sampleSizeTable that make up each chunk from the current firstChunk to the next firstChunk
            let sampleToChunkTable = stsc.sampleToChunkTable
            // the sampleSize is the byte-count of each sample.
            let sampleSizeTable = stsz.sampleSizeTable
            // the chunk offset is the beginning of the chunk in the FILE data, irrespective of atom structure
            let chunkOffsetTable = stco.chunkOffsetTable
            
            let chunkSizes = try getChunkSizes(
                sampleToChunkTable: sampleToChunkTable,
                sampleSizeTable: sampleSizeTable,
                chunkOffsetTable: chunkOffsetTable)
            
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
        } else {
            // this should only throw if we're looking for a text trak, because the sound track is a required atom checked for upon parsing
            throw Mp4File.Error.TrakAtomNotFound
        }
    }
    
    /// Collates sample table atom data and returns an array of chunk sizes that can be used with chunk offsets to target chunk data
    private func getChunkSizes(sampleToChunkTable: [(firstChunk: Int, samplesPerChunk: Int, sampleDescriptionID: Int)],
                                 sampleSizeTable: [Int],
                                 chunkOffsetTable: [Int]) throws -> [Int] {
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
        return chunkSizes
    }
    
    func calculateChapterStarts() -> [Int] {
        var firstStart = Double()
        if let elst = self.moov.soundTrack.edts?.elst {
            firstStart = elst.firstStart
        }
        if let stts = self.moov.chapterTrack?.mdia.minf.stbl.stts {
            var starts = [firstStart]
            var currentStart = firstStart
            for entry in stts.sampleTableWithTimeScaleCalculated.dropLast() {
                let duration = entry.sampleDuration
                let nextStart = currentStart + duration
                starts.append(nextStart)
                currentStart = nextStart
            }
            var startInts = [Int]()
            for start in starts {
                startInts.append(Int(start))
            }
            return startInts
        } else {
            return []
        }
    }
    
    func getChapterTitleStrings() throws -> [String] {
        if let track = self.moov.chapterTrack {
            var titles = [String]()
            let stsz = track.mdia.minf.stbl.stsz
            let offsetAtom = track.mdia.minf.stbl.chunkOffsetAtom
            let sampleSizeTable = stsz.sampleSizeTable
            let chunkOffsetTable = offsetAtom.chunkOffsetTable
            if sampleSizeTable.count == chunkOffsetTable.count {
                // if this is true, each offset corresponds with a size and we should not assume data is in consecutive chunks
                titles = try interpretTitleStringData(sizes: sampleSizeTable, offsets: chunkOffsetTable)
            } else {
                // try it this way, but it's gonne be ugly and probably won't work
                let sampleToChunkTable = track.mdia.minf.stbl.stsc.sampleToChunkTable
                let chunkSizes = try getChunkSizes(
                    sampleToChunkTable: sampleToChunkTable,
                    sampleSizeTable: sampleSizeTable,
                    chunkOffsetTable: chunkOffsetTable)
                
                titles = try interpretTitleStringData(sizes: chunkSizes, offsets: chunkOffsetTable)
            }
            return titles
        } else {
            return []
        }
    }
    
    private func interpretTitleStringData(sizes: [Int], offsets: [Int]) throws -> [String] {
        var titles = [String]()
        for (index, offset) in offsets.enumerated() {
            let size = sizes[index]
            let range = offset ..< offset + size
            var chunkData = self.fileData.subdata(in: range)
            let stringLength = chunkData.extractToInt(2)
            let stringData = chunkData.extractFirst(stringLength)
            
            // check for byte-order mark
            let bom: [UInt8] = [0xfe, 0xff]
            let bomRange = stringData.startIndex ..< stringData.index(stringData.startIndex, offsetBy: 2)
            if [UInt8](stringData.subdata(in: bomRange)) == bom {
                if let string = String(data: stringData, encoding: .utf16) {
                    titles.append(string)
                } else {
                    titles.append("Unparseable UTF-16 String Data")
                }
            } else {
                if let string = stringData.stringUtf8 {
                    titles.append(string)
                } else {
                    titles.append("Unparseable UTF-8 String Data")
                }
            }
        }
        return titles
    }
}
