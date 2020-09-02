/*
  Elst.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `elst` atom in an `Mp4File`'s atom structure
class Elst: Atom {
    
    private var version: Data
    private var flags: Data
    var entryCount: Int
    var editListTable: [(segmentDuration: Int, mediaTime: Int, mediaRate: Int)]
    
    /// Initialize a `elst` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        let versionInt = self.version.int8BE.toInt
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        var entryArray = [(segmentDuration: Int, mediaTime: Int, mediaRate: Int)]()
        while !data.isEmpty {
            // SegmentDuration: A 32-bit integer that specifies the duration of this edit segment in units of the movie’s time scale. (mp4v2 uses 64 bit if version is 1)
            var segmentDuration: Int = 0
            // A 32-bit integer containing the starting time within the media of this edit segment (in media timescale units). If this field is set to –1, it is an empty edit. The last edit in a track should never be an empty edit. Any difference between the movie’s duration and the track’s duration is expressed as an implicit empty edit. (mp4v2 uses 64 bit if version is 1)
            var mediaTime: Int = 0
            if versionInt == 1 {
                let preliminarySegmentDuration = data.extractFirst(8).int64BE.toDouble
                segmentDuration = Int(preliminarySegmentDuration) / Mp4File.timeScale
                mediaTime = data.extractToInt(8)
            } else {
                let preliminarySegmentDuration = data.extractFirst(4).int32BE.toDouble
                segmentDuration = Int(preliminarySegmentDuration) / Mp4File.timeScale
                mediaTime = data.extractToInt(4)
            }
            // A 32-bit fixed-point number that specifies the relative rate at which to play the media corresponding to this edit segment. This rate value cannot be 0 or negative. (Mp4v2 handles this as a 16-bit int and 2 reserve bytes, rather than 32-bit int)
            let mediaRate = data.extractToInt(2)
            // reserved
            _ = data.extractFirst(2)
            let entry = (segmentDuration, mediaTime, mediaRate)
            entryArray.append(entry)
        }
        self.editListTable = entryArray
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        let versionInt = self.version.int8BE.toInt
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
    
    var duration: Int {
        var duration = Int()
        for entry in editListTable {
            duration = duration + entry.segmentDuration
        }
        return duration
    }
    
    var firstStart: Int {
        if let firstEntry = editListTable.first {
            return firstEntry.mediaTime
        } else {
            return 0
        }
    }
}

