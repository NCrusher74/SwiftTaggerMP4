/*
  Stts.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `stts` atom in an `Mp4File`'s atom structure
class Stts: Atom {
    
    private var version: Data
    private var flags: Data
    var entryCount: Int
    var sampleTable: [(sampleCount: Int, sampleDuration: Int)]
    
    /// Initialize a `stts` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        var entryArray = [(sampleCount: Int, sampleDuration: Int)]()
        while !data.isEmpty {
            let sampleCount = data.extractToInt(4)
            let sampleDelta = data.extractToInt(4)
            let entry = (sampleCount, sampleDelta)
            entryArray.append(entry)
        }
        self.sampleTable = entryArray
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    var mediaDuration: Int {
        var preliminaryDuration = Double()
        for entry in self.sampleTable {
            var count = entry.sampleCount
            while count > 0 {
                preliminaryDuration += Double(entry.sampleDuration)
                count -= 1
            }
        }
        let duration = preliminaryDuration / Mp4File.mediaTimeScale * 1000
        return Int(duration)
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
        var entries = [(sampleCount: Int, sampleDuration: Int)]()
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
        
        self.sampleTable = entries
        self.entryCount = entries.count
        self.version = Atom.version
        self.flags = Atom.flags
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(entryCount.int32.beData)
        for entry in entries {
            payload.append(entry.sampleCount.int32.beData)
            payload.append(entry.sampleDuration.int32.beData)
        }
        let size = payload.count + 8
        
        try super.init(identifier: "stts", size: size, payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(entryCount.int32.beData)
        for entry in self.sampleTable {
            data.append(entry.sampleCount.int32.beData)
            data.append(entry.sampleDuration.int32.beData)
        }
        return data
    }
}
