/*
  Stts.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/*  The atom contains a compact version of a table that allows indexing from time to sample number. Other tables provide sample sizes and pointers from the sample number. Each entry in the table gives the number of consecutive samples with the same time delta, and the delta of those samples. By adding the deltas, a complete time-to-sample map can be built.
 
    The atom contains time deltas: DT(n+1) = DT(n) + STTS(n) where STTS(n) is the (uncompressed) table entry for sample n and DT is the display time for sample (n). The sample entries are ordered by time stamps; therefore, the deltas are all nonnegative. The DT axis has a zero origin; DT(i) = SUM (for j=0 to i-1 of delta(j)), and the sum of all deltas gives the length of the media in the track (not mapped to the overall time scale, and not considering any edit list). The edit list atom provides the initial DT value if it is nonempty (nonzero).
 
    In chapter terms, this describes the duration of each chapter */
/// A class representing a `stts` atom in an `Mp4File`'s atom structure
class Stts: Atom {
    
    private var version: Data
    private var flags: Data
    var entryCount: Int
    var sampleTable: [(sampleCount: Int, sampleDuration: Double)]
    
    /// Initialize a `stts` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        var entryArray = [(sampleCount: Int, sampleDuration: Double)]()
        while !data.isEmpty {
            let sampleCount = data.extractToInt(4)
            let sampleDuration = data.extractToDouble(4)
            let entry = (sampleCount, sampleDuration)
            entryArray.append(entry)
        }
        self.sampleTable = entryArray
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
        
    var mediaDuration: Int {
        var duration = Double()
        for entry in self.sampleTable {
            var count = entry.sampleCount
            while count > 0 {
                duration += Double(entry.sampleDuration)
                count -= 1
            }
        }
        return Int(duration)
    }
    
    /// **CHAPTER TRACK ONLY** Initialize an `stts` atom with chapter durations for building a chapter track
    init(chapterHandler: ChapterDataHandler,
         fileDuration: Double) throws {
        let durationArray = chapterHandler.calculateDurationsFromStartTimes(
            fileDuration: fileDuration)
        
        var entryDict = [Double: Int]() // [duration: Number of Samples With This Duration]
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
        var entries = [(sampleCount: Int, sampleDuration: Double)]()
        var previous = Double()
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
