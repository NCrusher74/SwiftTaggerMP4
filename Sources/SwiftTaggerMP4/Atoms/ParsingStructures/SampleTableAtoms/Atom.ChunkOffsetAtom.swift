/*
 Co64.swift
 
 
 Created by Nolaine Crusher on 7/4/20.
 */

import Foundation

/// A class representing a `co64` or `stco` atom in an `Mp4File`'s atom structure
///
/// `co64` is used when offsets are in 64bit integers, otherwise, `stco` is used
/// The offset table is an array of offsets for each chunk of data. The offset is the
/// chunk's offset in the *file data as a whole*, irrespective of atom structure.
/// When used for chaptering purposes, a chunk may be a single chapter title, or it may be the entire list of chapter titles. SwiftTaggerMP4 uses the first approach, and though it will handle parsing files where the chapter titles are presented as a single chunk, it will output chapter title data as one chunk per chapter title.
class ChunkOffsetAtom: Atom {
    
    private var version: Data // + 1
    private var flags: Data // + 3
    /// The number of entries in the chunk offset table
    var entryCount: Int // + 4
    /// The array of offsets in the *file data as a whole*, irrespective of atom structure.
    var chunkOffsetTable: [Int]
    
    /// Initialize a `chunkOffsetAtom` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        
        var offsetTable = [Int]()
        
        // If the identifier is co64, the offsets are stored as 64bit integers
        while !data.isEmpty {
            if identifier == "co64" {
                offsetTable.append(data.extractToInt(8))
            } else {
                offsetTable.append(data.extractToInt(4))
            }
        }
        self.chunkOffsetTable = offsetTable
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// **CHAPTER TRACK ONLY** Initialize a `chunkOffsetAtom` with chapter track data
    init(use64BitOffset: Bool,
         chapterHandler: ChapterHandler,
         startingOffset: Int) throws {
        let titles = chapterHandler.chapterTitles
        let offsetArray = chapterHandler.calculateTitleOffsets(
            startingOffset: startingOffset, titles: titles)
        self.version = Atom.version
        self.flags = Atom.flags
        self.entryCount = offsetArray.count
        self.chunkOffsetTable = offsetArray
        
        
        // 1 version + 3 flags + 4 entry count = 8
        var reserve = 8
        if use64BitOffset {
            reserve += chunkOffsetTable.count * 8
        } else {
            reserve += chunkOffsetTable.count * 4
        }
        
        var payload = Data()
        payload.reserveCapacity(reserve)
        payload.append(self.version)
        payload.append(self.flags)
        
        payload.append(self.entryCount.uInt32.beData)
        for offset in self.chunkOffsetTable {
            if use64BitOffset {
                payload.append(offset.uInt64.beData)
            } else {
                payload.append(offset.uInt32.beData)
            }
        }
        
        let size = reserve + 8
        if use64BitOffset {
            try super.init(identifier: "co64",
                           size: size,
                           payload: payload)
        } else {
            try super.init(identifier: "stco",
                           size: size,
                           payload: payload)
        }
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        
        var data = Data()
        data.reserveCapacity(reserve)
        
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.uInt32.beData)
        for offset in self.chunkOffsetTable {
            if self.identifier == "co64" {
                data.append(offset.uInt64.beData)
            } else {
                data.append(offset.uInt32.beData)
            }
        }
        return data
    }
}
