/*
  Chpl.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `chpl` atom in an `Mp4File`'s atom structure
class Chpl: Atom {
    private var version: Data
    private var flags: Data
    private var reserved: Data
    var chapterCount: Int
    var chapterTable: [(startTime: Int, title: String)]
    
    /// Initialize a `chpl` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        self.reserved = data.extractFirst(1)
        self.chapterCount = data.extractToInt(4)
        
        var chapterArray: [(startTime: Int, title: String)] = []
        while !data.isEmpty {
            let chapterStartTime = data.extractToInt(8)
            let titleSize = data.extractToInt(1)
            let title = data.extractFirst(titleSize).stringUtf8 ?? "Untitled Chapter"
            let chapter = (chapterStartTime, title)
            chapterArray.append(chapter)
        }
        self.chapterTable = chapterArray
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `chpl` atom for building a chapter track
    init(from chapterList: [(startTime: Int, title: String)]) throws {
        self.version = UInt8(0x01).beData
        self.flags = Atom.flags
        self.reserved = Data([0x00])
        self.chapterCount = chapterList.count
        self.chapterTable = chapterList
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(self.reserved)
        payload.append(self.chapterCount.int32.beData)
        for entry in chapterList {
            payload.append(entry.startTime.int64.beData)
            payload.append(entry.title.count.int8.beData)
            payload.append(entry.title.encodedUtf8)
        }
        
        let size = payload.count + 8
        try super.init(identifier: "chpl", size: size, payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.reserved)
        data.append(self.chapterCount.int32.beData)
        for entry in self.chapterTable {
            data.append(entry.startTime.int64.beData)
            data.append(entry.title.count.int8.beData)
            data.append(entry.title.encodedUtf8)
        }
        return data
    }
}
