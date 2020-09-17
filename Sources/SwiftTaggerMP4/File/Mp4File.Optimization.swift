//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/13/20.
//

import Foundation

extension Mp4File {
    func chunkSizes(stbl: Stbl) throws -> [Int] {
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
                        throw Mp4FileError.MissingSample
                    }
                    chunkSize += remainingSamples.removeFirst()
                }
                chunkSizes.append(chunkSize)
            }
        }
        // Handle any remaining chunks according to the last group.
        while !remainingSamples.isEmpty {
            guard let samples = sampleToChunkTable.last?.samplesPerChunk else {
                throw Mp4FileError.MissingChunk
            }
            var chunkSize = 0
            for _ in 0 ..< samples {
                guard !remainingSamples.isEmpty else {
                    throw Mp4FileError.MissingSample
                }
                chunkSize += remainingSamples.removeFirst()
            }
            chunkSizes.append(chunkSize)
        }
        return chunkSizes
    }

    func getMediaData() throws -> Data {
        let chunkOffsets = self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.chunkOffsetTable
        let chunkSizes = try self.chunkSizes(stbl: self.moov.soundTrack.mdia.minf.stbl)
        guard chunkSizes.count == chunkOffsets.count else {
            throw Mp4FileError.ChunkSizeToChunkOffsetCountMismatch
        }
        
        let data = self.data
        // Now that we know our CHUNK sizes, we can calculate the data to isolate by adding each chunk size to its corresponding offset to create a range for the data
        var mediaData = Data()
        for (index, entry) in chunkOffsets.enumerated() {
            let start = entry
            let end = start + chunkSizes[index]
            let range = start ..< end
            mediaData.append(data.subdata(in: range))
        }
        return mediaData
    }
    
    func calculateNewMediaOffsets() throws -> [Int] {
        // isolate the atoms that will come BEFORE the media atom, and get rid of any unused space-holding atoms to clean things up
        let filteredAtoms = rootAtoms.filter({
            $0.identifier != "mdat" &&
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
        let chunkSizes = try self.chunkSizes(stbl: self.moov.soundTrack.mdia.minf.stbl)
        for chunkSize in chunkSizes.dropLast() {
            offset += chunkSize
            offsets.append(offset)
        }
        
        guard offsets.count == self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.chunkOffsetTable.count else {
            throw Mp4FileError.NewChunkOffsetArrayCountMismatch
        }
        return offsets
    }
    
    func setMetadataAtoms(tag: Tag) throws {
        if tag.metadataAtoms.isEmpty {
            if let udta = self.moov.udta, udta.children.count > 1 {
                udta.meta = nil
                self.moov.udta = udta
            } else {
                self.moov.udta = nil
            }
        } else {
            var newMetadataAtoms = [Atom]()
            for (_, atom) in tag.metadataAtoms {
                newMetadataAtoms.append(atom)
            }
            let ilst = try Ilst(children: newMetadataAtoms)
            let hdlr = try Hdlr()
            let meta = try Meta(children: [hdlr, ilst])
            if self.moov.udta != nil {
                self.moov.udta?.meta = meta
            } else {
                let udta = try Udta(children: [meta])
                self.moov.udta = udta
            }
        }
    }

    @available(OSX 10.12, *)
    func setChapterTrack(mediaData: Data, tag: Tag) throws {
        if tag.listChapters().isEmpty {
            self.moov.chapterTrack = nil
            self.moov.udta?.chpl = nil
            self.moov.chapterTrackID = nil
        } else {
            let chpl = try Chpl(from: tag.listChapters())
            if self.moov.udta != nil {
                self.moov.udta?.chpl = chpl
            } else {
                let udta = try Udta(children: [chpl])
                self.moov.udta = udta
            }
            
            var chapterTrackID: Int
            if let trackID = self.moov.chapterTrackID {
                chapterTrackID = trackID
            } else {
                // this will set the tref.chap atom in soundtrack
                chapterTrackID = self.moov.mvhd.nextTrackID
                self.moov.chapterTrackID = chapterTrackID
                self.moov.mvhd.incrementNextTrackID()
            }
            // this is a chaptertrack without a chunk offset atom yet
            // we're not adding the chunk offset atom here because we need to have a starting offset to create the chunk offset atom
            // to get the starting offset, we need all the other atoms in place first
            let chapterTrack = try Trak(chapterHandler: tag.chapterHandler,
                                        language: self.language,
                                        moov: self.moov,
                                        chapterTrackID: chapterTrackID)
            self.moov.chapterTrack = chapterTrack
            
            var offset = mediaData.count + 8 // +8 for mdat header data
            // increase the offset by the byte count of every atom except mdat
            // since we've already set the chapter track, except for the chunk offset atom, this count should include the chapter track atoms
            let filteredAtoms = rootAtoms.filter({
                $0.identifier != "mdat" &&
                    $0.identifier != "free" &&
                    $0.identifier != "skip" &&
                    $0.identifier != "wide"})
            for atom in filteredAtoms {
                offset += atom.encode().count
            }
            // we still need to add the chunk offset atom, but the starting offset will include the atom itself, which doesn't exist yet, so we need to calculate its size
            // +4 for size, +4 identifier, +4 version and flags +4 entry count
            offset += 16
            // need to know how many bytes the chunk offset array will add
            // if atom is co64, offset will increase by 8 per title, otherwise 4
            for _ in tag.chapterHandler.chapterTitles {
                if Mp4File.use64BitOffset {
                    offset += 8
                } else {
                    offset += 4
                }
            }
            // create the atom and add it to the chapter track sample table
            let offsetAtom = try ChunkOffsetAtom(
                use64BitOffset: Mp4File.use64BitOffset,
                chapterHandler: tag.chapterHandler,
                startingOffset: offset)
            self.moov.chapterTrack?.mdia.minf.stbl.chunkOffsetAtom = offsetAtom
        }
    }
    
    func setMdat(mediaData: Data, tag: Tag) throws {
        let mdat = try Mdat(mediaData: mediaData,
                            titleArray: tag.chapterHandler.chapterTitles)
        self.mdats = [mdat]
        self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.chunkOffsetTable = try calculateNewMediaOffsets()
    }
    
    @available(OSX 10.12, *)
    func setLanguage(tag: Tag) {
        if tag.language != .unspecified {
            self.language = tag.language
        } else {
            self.language = nil
        }
    }
}
