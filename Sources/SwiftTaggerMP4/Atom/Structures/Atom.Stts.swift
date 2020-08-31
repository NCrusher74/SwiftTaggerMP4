//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `stts` atom in an `Mp4File`'s atom structure
class Stts: Atom {
    
    private var versionAndFlags: Data // 4
    var entryCount: Int // 4
    var sampleTable: SampleTable
    
    /// Initialize a `stts` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractFirstToInt(32)
        self.sampleTable = SampleTable(from: data)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    class SampleTable {
        var entries: [(sampleCount: Int, sampleDuration: Int)]
        
        init(from data: Data) {
            var remainder = data
            var entryArray: [(sampleCount: Int, sampleDuration: Int)] = []
            while !remainder.isEmpty {
                let sampleCount = remainder.extractFirstToInt(32)
                let sampleDelta = remainder.extractFirstToInt(32)
                let entry = (sampleCount, sampleDelta)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        init(from array: [(sampleCount: Int, sampleDuration: Int)]) {
            self.entries = array
        }
        
        var entryData: Data {
            var data = Data()
            for entry in self.entries {
                data.append(entry.sampleCount.beData(32))
                data.append(entry.sampleDuration.beData(32))
            }
            return data
        }
    }
    
    /// Calculate the durations of chapter samples
    private static func calculateDurations(from startTimes: [Int], fileDuration: Int) -> [Int] {
        var chapterDurations = [Int]()
        let enumeratedStarts = startTimes.enumerated()
        let firstStart = startTimes.first ?? 0
        // Handle all but the last one.
        for (index, startTime) in enumeratedStarts.dropLast() {
            let followingTime = startTimes[startTimes.index(after: index)]
            chapterDurations.append(followingTime - startTime)
        }
        
        // Handle the last one.
        let lastStart = startTimes.last ?? firstStart
        chapterDurations.append(fileDuration - lastStart)
        
        return chapterDurations
    }
    
    /// Initialize an `stts` atom with chapter durations for building a chapter track
    init(from startTimes: [Int], fileDuration: Int) throws {
        let durationArray = Stts.calculateDurations(from: startTimes, fileDuration: fileDuration)
        
        var entryDict = [Int: Int]() // [duration: Number of Samples With This Duration]
        if durationArray.count == 1 {
            let duration = durationArray[durationArray.startIndex]
            entryDict[duration] = 1
        } else {
            // handle everything except the last
            var sampleCount: Int = 1
            for (index, duration) in durationArray.enumerated().dropLast() {
                let followingIndex = durationArray.index(after: index)
                if durationArray[index] == durationArray[followingIndex] {
                    entryDict[duration] = sampleCount + 1
                    sampleCount += 1
                } else {
                    entryDict[duration] = sampleCount
                    sampleCount = 1
                }
            }
            // handle the last one
            let lastDuration = durationArray.last ?? 0
            let nextToLastIndex = durationArray.index(before: durationArray.endIndex - 1)
            if lastDuration == durationArray[nextToLastIndex] {
                entryDict[lastDuration] = (entryDict[lastDuration] ?? 1) + 1
            } else {
                entryDict[lastDuration] = 1
            }
        }
        var entries: [(sampleCount: Int, sampleDuration: Int)] = []
        var previous = Int()
        for duration in durationArray {
            if duration == previous {
                continue
            } else {
                previous = duration
                let sampleCount = entryDict[duration]!
                let arrayEntryTuple = (sampleCount, duration)
                entries.append(arrayEntryTuple)
            }
        }
        
        self.sampleTable = SampleTable(from: entries)
        self.entryCount = entries.count
        self.versionAndFlags = Data(repeating: 0x00, count: 4)
        
        let tableData = sampleTable.entryData
        
        var payload = Data()
        payload.append(versionAndFlags)
        payload.append(entryCount.beData(32))
        payload.append(tableData)
        let size = payload.count + 8
        
        try super.init(identifier: "stts", size: size, payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beData(32))
        data.append(self.sampleTable.entryData)
        return data
    }
}
