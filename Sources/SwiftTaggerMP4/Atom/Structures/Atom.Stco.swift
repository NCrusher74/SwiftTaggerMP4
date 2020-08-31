//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `stco` atom in an `Mp4File`'s atom structure
class Stco: Atom {
    private var versionAndFlags: Data
    var entryCount: Int // 4
    var chunkOffsetTable: ChunkOffsetTable
    
    /// Initialize a `stco` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractFirstToInt(32)
        self.chunkOffsetTable = ChunkOffsetTable(from: data)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    class ChunkOffsetTable {
        var entries: [Int]
        
        init(from data: Data) {
            var entryArray: [Int] = []
            var remainder = data
            while !remainder.isEmpty {
                let entry = remainder.extractFirstToInt(32)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        init(from array: [Int]) {
            self.entries = array
        }
        
        var firstOffset: Int? {
            if self.entries != [] {
                return self.entries.first!
            } else {
                return nil
            }
        }
        
        var entryData: Data {
            var data = Data()
            for entry in entries {
                data.append(entry.beData(32))
            }
            return data
        }
    }
    
    /// Calculate the offsets of chapter data
    private static func calculateOffsets(startingOffset: Int, titles: [String]) -> [Int] {
        var offsets: [Int] = [startingOffset]
        var offset = startingOffset
        for title in titles.dropLast() {
            let chunkSize = title.count + 2 // UInt16 size bytes
            offset = offset + chunkSize
            offsets.append(offset)
        }
        return offsets
    }
    
    /// Initialize an stco atom from chapter title data
    init(startingOffset: Int, titles: [String]) throws {
        let offsetArray = Stco.calculateOffsets(
            startingOffset: startingOffset, titles: titles)
        self.versionAndFlags = Data(repeating: 0x00, count: 4)
        self.entryCount = offsetArray.count
        self.chunkOffsetTable = ChunkOffsetTable(from: offsetArray)
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(self.entryCount.beData(32))
        payload.append(self.chunkOffsetTable.entryData)
        let size = payload.count + 8
        
        try super.init(identifier: "stco",
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beData(32))
        data.append(self.chunkOffsetTable.entryData)
        return data
    }
}
