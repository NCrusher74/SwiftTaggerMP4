/*
  Elst.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `elst` atom in an `Mp4File`'s atom structure
class Elst: Atom {
    
    private var version: Data
    private var flags: Data
    /// The number of elements in the edit list table
    var entryCount: Int
    private var editListData: Data
    
    /// Initialize a `elst` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        self.editListData = data
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// `Track duration`: A 32-bit integer that specifies the duration of this edit segment in units of the movie’s time scale. (mp4v2 uses 64 bit if version is 1)
    /// `Media time`: A 32-bit integer containing the starting time within the media of this edit segment (in media timescale units). If this field is set to –1, it is an empty edit. The last edit in a track should never be an empty edit. Any difference between the movie’s duration and the track’s duration is expressed as an implicit empty edit. (mp4v2 uses 64 bit if version is 1)
    /// `Media rate`: A 32-bit fixed-point number that specifies the relative rate at which to play the media corresponding to this edit segment. This rate value cannot be 0 or negative.
    var editListTable: [(segmentDuration: Double, mediaTime: Double, mediaRate: Double)] {
        var entryArray = [(segmentDuration: Double, mediaTime: Double, mediaRate: Double)]()
        var data = self.editListData
        while !data.isEmpty {
            var segmentDuration: Double = 0
            var mediaTime: Double = 0
            if self.version.uInt8BE == 0x01 {
                segmentDuration = data.extractFirst(8).uInt64BE.double
                mediaTime = data.extractToDouble(8)
            } else {
                segmentDuration = data.extractFirst(4).uInt32BE.double
                mediaTime = data.extractToDouble(4)
            }
            let mediaRate = data.extractToDouble(2)
            // reserved
            _ = data.extractFirst(2)
            let entry = (segmentDuration, mediaTime, mediaRate)
            entryArray.append(entry)
        }
        return entryArray
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        let versionInt = self.version.uInt8BE.int
        data.append(self.flags)
        data.append(self.entryCount.int32.beData)
        for entry in editListTable {
            if versionInt == 1 {
                data.append(entry.segmentDuration.int64.beData)
                data.append(entry.mediaTime.int64.beData)
            } else {
                data.append(entry.segmentDuration.int32.beData)
                data.append(entry.mediaTime.int32.beData)
            }
            data.append(entry.mediaRate.int16.beData)
            data.append(Atom.addReserveData(2))
        }
        return data
    }
    
    /// The duration of the media as calculated by taking the sum of the segment durations
    var duration: Double {
        var duration = Double()
        for entry in editListTable {
            duration += entry.segmentDuration
        }
        return duration
    }
    
    /// The first mediaTime entry in the edit list table, for use in establishing the first chapter start
    var firstStart: Double {
        if let firstEntry = editListTable.first {
            return firstEntry.mediaTime
        } else {
            return 0
        }
    }
}

