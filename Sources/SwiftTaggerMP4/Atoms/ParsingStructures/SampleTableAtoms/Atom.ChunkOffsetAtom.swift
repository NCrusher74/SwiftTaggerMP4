/*
  Co64.swift


  Created by Nolaine Crusher on 7/4/20.
*/

import Foundation

/// A class representing a `co64` or `stco` atom in an `Mp4File`'s atom structure
///
/// `co64` is used when offsets are in 64bit integers, otherwise, `stco` is used
class ChunkOffsetAtom: Atom {
    
    private var version: Data
    private var flags: Data
    var entryCount: Int
    var chunkOffsetTable: [Int]
    
    /// Initialize a `chunkOffsetAtom` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        
        var offsetTable = [Int]()
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

    /// Initialize a `chunkOffsetAtom` with chapter track data
    init(use64BitOffset: Bool,
         chapterHandler: ChapterDataHandler,
         startingOffset: Int,
         titles: [String]) throws {
        let offsetArray = chapterHandler.calculateTitleOffsets(
            startingOffset: startingOffset, titles: titles)
        self.version = Atom.version
        self.flags = Atom.flags
        self.entryCount = offsetArray.count
        self.chunkOffsetTable = offsetArray
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        
        payload.append(self.entryCount.int32.beData)
        for offset in self.chunkOffsetTable {
            if use64BitOffset {
                payload.append(offset.int64.beData)
            } else {
                payload.append(offset.int32.beData)
            }
        }
        let size = payload.count + 8
        
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
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.int32.beData)
        for offset in self.chunkOffsetTable {
            if self.identifier == "co64" {
                data.append(offset.int64.beData)
            } else {
                data.append(offset.int32.beData)
            }
        }
        return data
    }
}
