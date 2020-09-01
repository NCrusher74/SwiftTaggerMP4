///*
//  Co64.swift
//
//
//  Created by Nolaine Crusher on 7/4/20.
//*/
//
//import Foundation
//
///// A class representing a `co64` atom in an `Mp4File`'s atom structure
//class Co64: Atom {
//    
//    private var versionAndFlags: Data
//    var entryCount: Int
//    var chunkOffsetTable: ChunkOffsetTable
//    
//    /// Initialize a `co64` atom for parsing from the root structure
//    override init(identifier: String, size: Int, payload: Data) throws {
//        
//        var data = payload
//        self.versionAndFlags = data.extractFirst(4)
//        self.entryCount = data.extractTo32BitInt()
//        self.chunkOffsetTable = ChunkOffsetTable(from: data)
//        
//        try super.init(identifier: identifier,
//                       size: size,
//                       payload: payload)
//    }
//    
//    class ChunkOffsetTable {
//        var entries: [Int]
//        
//        init(from data: Data) {
//            var offsetArray: [Int] = []
//            var remainder = data
//            while !remainder.isEmpty {
//                let chunkOffset = remainder.extractTo64BitInt()
//                offsetArray.append(chunkOffset)
//            }
//            self.entries = offsetArray
//        }
//        
//        init(from array: [Int]) {
//            self.entries = array
//        }
//        
//        var firstOffset: Int? {
//            if self.entries != [] {
//                return self.entries.first!
//            } else {
//                return nil
//            }
//        }
//        
//        var entryData: Data {
//            var data = Data()
//            for entry in self.entries {
//                data.append(entry.beDataFrom64BitInt)
//            }
//            return data
//        }
//    }
//    
//    /// Calculate the offsets for chapter title data
//    private static func calculateOffsets(startingOffset: Int, titles: [String]) -> [Int] {
//        var offsets: [Int] = [startingOffset]
//        var offset = startingOffset
//        for title in titles.dropLast() {
//            let chunkSize = title.count + 2
//            offset = offset + chunkSize
//            offsets.append(offset)
//        }
//        return offsets
//    }
//    
//    /// Initialize a `co64` atom with chapter track data
//    init(startingOffset: Int, titles: [String]) throws {
//        let offsetArray = Co64.calculateOffsets(
//            startingOffset: startingOffset, titles: titles)
//        self.versionAndFlags = Atom.versionAndFlags
//        self.entryCount = offsetArray.count
//        self.chunkOffsetTable = ChunkOffsetTable(from: offsetArray)
//        
//        var payload = Data()
//        payload.append(self.versionAndFlags)
//        payload.append(self.entryCount.beDataFrom32BitInt)
//        payload.append(self.chunkOffsetTable.entryData)
//        let size = payload.count + 8
//        
//        try super.init(identifier: "co64",
//                       size: size,
//                       payload: payload)
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.versionAndFlags)
//        data.append(self.entryCount.beDataFrom32BitInt)
//        data.append(self.chunkOffsetTable.entryData)
//        return data
//    }
//}
