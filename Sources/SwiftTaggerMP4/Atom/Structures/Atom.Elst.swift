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
        let version = versionData.extractFirstToInt(1)
        self.entryCount = data.extractFirstToInt(32)
        self.editListTable = EditListTable(from: data, version: version)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beData(32))
        data.append(self.editListTable.entryData)
        return data
    }
    
    class EditListTable {
        /// Segment duration is the duration in the movie's timeScale
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
                    segmentDuration = remainder.extractFirstToInt(8)
                    mediaTime = remainder.extractFirstToInt(8)
                } else {
                    segmentDuration = remainder.extractFirstToInt(32)
                    mediaTime = remainder.extractFirstToInt(32)
                }
                let mediaRate = remainder.extractFirstToInt(2)
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
                    data.append(entry.segmentDuration.beData(64))
                    data.append(entry.mediaTime.beData(64))
                } else {
                    data.append(entry.segmentDuration.beData(32))
                    data.append(entry.mediaTime.beData(32))
                }
                data.append(entry.mediaRate.beData(16))
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

