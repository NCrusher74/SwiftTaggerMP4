/*
 Chpl.swift
 
 
 Created by Nolaine Crusher on 6/30/20.
 */

import Foundation
import SwiftConvenienceExtensions
/// A class representing a `chpl` atom in an `Mp4File`'s atom structure
class Chpl: Atom {
    private var version: Data
    private var flags: Data
    private var reserved: Data
    var chapterCount: Int
    var chapterTable: [Chapter]
    
    /// Initialize a `chpl` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        
        self.reserved = data.extractFirst(1)
        self.chapterCount = data.extractToInt(4)
        
        var chapters: [Chapter] = []
        while !data.isEmpty {
            let startTimeRaw = data.extractFirst(8)
            // this is the start time as 100 nanosecond units
            // we need to convert it to milliseconds. We will lose a little precision. Oh well.
            let chapterStartTime = startTimeRaw.uInt64BE.int / 10000

            let titleSize = data.extractToInt(1)
            let title = data.extractFirst(titleSize).stringUtf8 ?? "Untitled Chapter"
            let chapter = Chapter(startTime: chapterStartTime, title: title)
            chapters.append(chapter)
        }
        self.chapterTable = chapters
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `chpl` atom for building a chapter track
    init(from chapterList: [Chapter]) throws {
        self.version = UInt8(0x01).beData
        self.flags = Atom.flags
        self.reserved = Data([0x00])
        self.chapterCount = chapterList.count
        self.chapterTable = chapterList
        
        let size = 17
            + (chapterList.count * 8)
            + (chapterList.map({$0.title.utf8.count + 1}).sum())
        try super.init(identifier: "chpl", size: size)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)

        data.append(self.version)
        data.append(self.flags)
        data.append(self.reserved)
        data.append(self.chapterCount.uInt32.beData)
        for entry in self.chapterTable {
            data.append((entry.startTime * 10000).uInt64.beData)
            data.append(entry.title.count.uInt8.beData)
            data.append(entry.title.encodedUtf8)
        }
        return data
    }
}
