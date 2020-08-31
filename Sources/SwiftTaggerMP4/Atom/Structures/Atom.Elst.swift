//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `elst` atom in an `Mp4File`'s atom structure
class Elst: Atom {
    
    private var versionAndFlags: Data
    var entryCount: Int
    var editListTable: EditListTable
    
    /// Initialize a `elst` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        var versionData = versionAndFlags
        let version = versionData.extractTo8BitInt()
        self.entryCount = data.extractTo32BitInt()
        self.editListTable = EditListTable(from: data, version: version)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beDataFrom32BitInt)
        data.append(self.editListTable.entryData)
        return data
    }
    
    class EditListTable {
        /// SegmentDuration: A 32-bit integer containing the starting time within the media of this edit segment (in MEDIA (derived from mdhd atom )timescale units). If this field is set to –1, it is an empty edit. The last edit in a track should never be an empty edit. Any difference between the movie’s duration and the track’s duration is expressed as an implicit empty edit
        var entries: [(segmentDuration: Int, mediaTime: Int, mediaRate: Int, reserved: Data)]
        var version: Int
        
        init(from data: Data, version: Int) {
            self.version = version
            var remainder = data
            var entryArray: [(segmentDuration: Int, mediaTime: Int, mediaRate: Int, reserved: Data)] = []
            
            while !remainder.isEmpty {
                var segmentDuration: Int = 0
                var mediaTime: Int = 0
                if version == 1 {
                    let preliminarySegmentDuration = remainder.extractTo64BitIntViaDouble()
                    segmentDuration = preliminarySegmentDuration / Mp4File.timeScale
                    mediaTime = remainder.extractTo64BitInt()
                } else {
                    let preliminarySegmentDuration = remainder.extractTo32BitIntViaDouble()
                    segmentDuration = preliminarySegmentDuration / Mp4File.timeScale
                    mediaTime = remainder.extractTo32BitInt()
                }
                let mediaRate = remainder.extractTo16BitInt()
                let reserved = remainder.extractFirst(2)
                let entry = (segmentDuration, mediaTime, mediaRate, reserved)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        var entryData: Data {
            var data = Data()
            for entry in self.entries {
                if self.version == 1 {
                    data.append(entry.segmentDuration.beDataFrom64BitInt)
                    data.append(entry.mediaTime.beDataFrom64BitInt)
                } else {
                    data.append(entry.segmentDuration.beDataFrom32BitInt)
                    data.append(entry.mediaTime.beDataFrom32BitInt)
                }
                data.append(entry.mediaRate.beDataFrom16BitInt)
                data.append(entry.reserved)
            }
            return data
        }
        
        var duration: Int {
            var duration = Int()
            for entry in entries {
                duration = duration + entry.segmentDuration
            }
            return duration
        }
        
        var firstStart: Int {
            var starts = [Int]()
            for entry in entries {
                starts.append(entry.mediaTime)
            }
            if let firstStart = starts.first {
                return firstStart
            } else {
                return 0
            }
        }
    }
}

