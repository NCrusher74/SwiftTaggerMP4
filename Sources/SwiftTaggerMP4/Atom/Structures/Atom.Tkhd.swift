//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/20/20.
//

import Foundation

/// A class representing a `tkhd` atom in an `Mp4File`'s atom structure
class Tkhd: Atom {
    // contentData count should be a total of 84 bytes
    private var versionAndFlags: Data // 4 bytes
    var creationTime: UInt32 // 4 bytes
    var modificationTime: UInt32 // 4 bytes
    var trackID: Int // 4 bytes
    private var reserved1: Data // 4 bytes
    private var durationRaw: Data // 4 bytes
    private var reserved2: Data // 8 bytes
    var layer: Int // 2 bytes
    var alternateGroup: Int // 2 bytes
    var volume: Int // 2 bytes
    private var reserved3: Data // 2 bytes
    private var matrixStructure: Data // 36 bytes
    var trackWidth: Int // 4 bytes
    var trackHeight: Int // 4 bytes
    
    /// Initialize a `tkhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        guard data.count == 84 else { fatalError(Mp4File.Error.InvalidTrackHeaderData.localizedDescription)
        }
        
        self.versionAndFlags = data.extractFirst(4)
        self.creationTime = data.extractToUInt32BE()
        self.modificationTime = data.extractToUInt32BE()
        self.trackID = data.extractFirstToInt(32)
        self.reserved1 = data.extractFirst(4)
        self.durationRaw = data.extractFirst(4)
        self.reserved2 = data.extractFirst(8)
        self.layer = data.extractFirstToInt(2)
        self.alternateGroup = data.extractFirstToInt(2)
        self.volume = data.extractFirstToInt(2)
        self.reserved3 = data.extractFirst(2)
        self.matrixStructure = data.extractFirst(36)
        self.trackWidth = data.extractFirstToInt(32)
        self.trackHeight = data.extractFirstToInt(32)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    //    /** Duration - A time value that indicates the duration of this track (in the movie’s time coordinate system). Note that this property is derived from the track’s edits. The value of this field is equal to the sum of the durations of all of the track’s edits. If there is no edit list, then the duration is the sum of the sample durations, converted into the movie timescale. */
    var duration: Int {
        if let duration = FilePropertyReference.elstDuration {
            return duration
        } else {
            return self.durationRaw.toInt32
        }
    }
    
    /// Initialize a `tkhd` atom for a chapter track
    ///
    /// Specifically for use with chapter tracks. May not work in other contexts.
    @available(OSX 10.12, *)
    init(trackID: Int) throws {
        self.versionAndFlags = Data(repeating: 0x00, count: 4)
        
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.trackID = trackID
        self.reserved1 = Data(repeating: 0x00, count: 4)
        if let duration = FilePropertyReference.elstDuration {
            self.durationRaw = duration.beData(32)
        } else {
            self.durationRaw = FilePropertyReference.duration.beData(32)
        }
        self.reserved2 = Data(repeating: 0x00, count: 8)
        self.layer = 0
        self.alternateGroup = 0
        self.volume = 0
        self.reserved3 = Data(repeating: 0x00, count: 2)
        self.matrixStructure = Data(repeating: 0x00, count: 36)
        self.trackWidth = 0
        self.trackHeight = 0
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(self.creationTime.beData)
        payload.append(self.modificationTime.beData)
        payload.append(self.trackID.beData(32))
        payload.append(self.reserved1)
        payload.append(self.durationRaw)
        payload.append(self.reserved2)
        payload.append(self.layer.beData(16))
        payload.append(self.alternateGroup.beData(16))
        payload.append(self.volume.beData(16))
        payload.append(self.reserved3)
        payload.append(self.matrixStructure)
        payload.append(self.trackWidth.beData(32))
        payload.append(self.trackHeight.beData(32))
        guard payload.count == 84 else { fatalError(Mp4File.Error.InvalidTrackHeaderData.localizedDescription)
        }
        
        try super.init(identifier: "tkhd",
                       size: payload.count + 8,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.creationTime.beData)
        data.append(self.modificationTime.beData)
        data.append(self.trackID.beData(32))
        data.append(self.reserved1)
        data.append(self.durationRaw)
        data.append(self.reserved2)
        data.append(self.layer.beData(16))
        data.append(self.alternateGroup.beData(16))
        data.append(self.volume.beData(16))
        data.append(self.reserved3)
        data.append(self.matrixStructure)
        data.append(self.trackWidth.beData(32))
        data.append(self.trackHeight.beData(32))
        return data
    }
}
