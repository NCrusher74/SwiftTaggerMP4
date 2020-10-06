/*
  Stts.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/*  The atom contains a compact version of a table that allows indexing from time to sample number. Other tables provide sample sizes and pointers from the sample number. Each entry in the table gives the number of consecutive samples with the same time delta, and the delta of those samples. By adding the deltas, a complete time-to-sample map can be built.
 
    The atom contains time deltas: DT(n+1) = DT(n) + STTS(n) where STTS(n) is the (uncompressed) table entry for sample n and DT is the display time for sample (n). The sample entries are ordered by time stamps; therefore, the deltas are all nonnegative. The DT axis has a zero origin; DT(i) = SUM (for j=0 to i-1 of delta(j)), and the sum of all deltas gives the length of the media in the track (not mapped to the overall time scale, and not considering any edit list). The edit list atom provides the initial DT value if it is nonempty (nonzero).
 
    In chaptering terms, this describes the duration of each chapter */
/// A class representing a `stts` atom in an `Mp4File`'s atom structure
///
/// This atom maps the duration of each sample to a display time (start time) in the media
class Stts: Atom {
    
    private var version: Data
    private var flags: Data
    /// The number of elements in the sampleToTimeTable
    var entryCount: Int
    /// `sampleCount`: the number of consecutive samples with the same duration
    /// `sampleDuration`: the duration of each sample
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
    
    /// The total duration of the media as the sum of the sample durations
    var mediaDuration: Int {
        var duration = Double()
        for entry in self.sampleTable {
            duration += (Double(entry.sampleCount) * entry.sampleDuration)
        }
        return Int(duration)
    }
    
    func getStartTimesFromDurations(
        timeScale: Double, initialStart: Int) -> [Int] {
        var starts = [initialStart]
        var currentStart = initialStart
        
        // handle all but the last
        for item in sampleTable.dropLast() {
            if item.sampleCount == 1 {
                let duration = (item.sampleDuration / timeScale) * 1000
                currentStart += Int(duration.rounded())
                starts.append(currentStart)
            } else {
                var count = item.sampleCount
                while count > 0 {
                    let duration = (item.sampleDuration / timeScale) * 1000
                    currentStart += Int(duration.rounded())
                    starts.append(currentStart)
                    count -= 1
                }
            }
        }
        // handle the last
        // we don't need the very last duration because it will create a start time for nothing
        if let item = sampleTable.last {
            // if this sample count is 1, this won't be executed
            var count = item.sampleCount - 1
            while count > 0 {
                currentStart += Int(item.sampleDuration)
                starts.append(currentStart)
                count -= 1
            }
        }
        return starts
    }

    /// **CHAPTER TRACK ONLY** Initialize an `stts` atom with chapter durations for building a chapter track
    init(chapterHandler: ChapterHandler,
         mediaDuration: Double) throws {
        let durationArray = chapterHandler.calculateDurationsFromStartTimes(
            mediaDuration: mediaDuration)
        guard !durationArray.isEmpty else {
            throw StblError.SampleDurationArrayIsEmpty
        }
        var entries = [(sampleCount: Int, sampleDuration: Double)]()
        var previous = 0.0
            var count = 1
            for duration in durationArray {
                if duration == previous {
                    count += 1
                } else {
                    // store the number of samples with the previous duration
                    let entry = (count, duration)
                    entries.append(entry)
                    // update previous to current duration
                    previous = duration
                    // reset the count
                    count = 1
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
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
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
