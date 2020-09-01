/*
  Chpl.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `chpl` atom in an `Mp4File`'s atom structure
class Chpl: Atom {
    private var versionAndFlags: Data
    private var reserved: Data
    var chapterCount: Int
    var chapterTable: ChapterTable
    
    /// Initialize a `chpl` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.reserved = data.extractFirst(1)
        self.chapterCount = data.extractTo32BitInt()
        
        self.chapterTable = ChapterTable(from: data)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `chpl` atom for building a chapter track
    init(from chapterList: [(startTime: Int, title: String)]) throws {
        self.versionAndFlags = Data(repeating: 0x01, count: 1) + Data(repeating: 0x00, count: 3)
        self.reserved = Data(repeating: 0x00, count: 1)
        self.chapterCount = chapterList.count
        self.chapterTable = ChapterTable(chapterList: chapterList)
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(self.reserved)
        payload.append(self.chapterCount.beDataFrom32BitInt)
        payload.append(self.chapterTable.entryData)
        
        let size = payload.count + 8
        try super.init(identifier: "chpl", size: size, payload: payload)
    }
    
    class ChapterTable {
        var chapters: [(startTime: Int, title: String)]
        
        init(from data: Data) {
            var chapterArray: [(startTime: Int, title: String)] = []
            var remainder = data
            while !remainder.isEmpty {
                let chapterStartTime = remainder.extractTo64BitInt()
                let titleSize = remainder.extractTo8BitInt()
                let title = remainder.extractFirst(titleSize).toStringUtf8 ?? ""
                let chapter = (chapterStartTime, title)
                chapterArray.append(chapter)
            }
            self.chapters = chapterArray
        }
        
        init(chapterList: [(startTime: Int, title: String)]) {
            self.chapters = chapterList
        }
        
        var entryData: Data {
            var data = Data()
            for chapter in self.chapters {
                data.append(chapter.startTime.beDataFrom64BitInt)
                data.append(chapter.title.count.beDataFrom8BitInt)
                data.append(Data(chapter.title.utf8))
            }
            return data
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.reserved)
        data.append(self.chapterCount.beDataFrom32BitInt)
        data.append(self.chapterTable.entryData)
        return data
    }
}
