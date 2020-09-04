/*
  Tkhd.swift


  Created by Nolaine Crusher on 6/20/20.
*/

import Foundation

/// A class representing a `tkhd` atom in an `Mp4File`'s atom structure
class Tkhd: Atom {
    // contentData count should be a total of 84 bytes
    private var version: Data
    private var flags: Data
    var creationTime: Int
    var modificationTime: Int
    var trackID: Int
    private var durationRaw: Data?
    var layer: Int16
    var alternateGroup: Int16
    var volume: Int16
    private var matrixStructure: Data
    var trackWidth: Int32
    var trackHeight: Int32
    
    /// Initialize a `tkhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        if self.version.int8BE == 0x01 {
            self.creationTime = data.extractToInt(8)
            self.modificationTime = data.extractToInt(8)
        } else {
            self.creationTime = data.extractToInt(4)
            self.modificationTime = data.extractToInt(4)
        }
        self.trackID = data.extractToInt(4)
        _ = data.extractFirst(4)
        if self.version.int8BE == 0x01 {
            self.durationRaw = data.extractFirst(8)
        } else {
            self.durationRaw = data.extractFirst(4)
        }
        _ = data.extractFirst(8)
        self.layer = data.extractFirst(2).int16BE
        self.alternateGroup = data.extractFirst(2).int16BE
        self.volume = data.extractFirst(2).int16BE
        _ = data.extractFirst(2)
        self.matrixStructure = data.extractFirst(36)
        self.trackWidth = data.extractFirst(4).int32BE
        self.trackHeight = data.extractFirst(4).int32BE
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    //    /** Duration - A time value that indicates the duration of this track (in the MOVIES’s time coordinate system (from mvhd atom)). Note that this property is derived from the track’s edits. The value of this field is equal to the sum of the durations of all of the track’s edits. If there is no edit list, then the duration is the sum of the sample durations (from stts atom?), converted into the MOVIE timescale. */
    var duration: Double {
        if let edts = self.siblings?.first(where: {$0.identifier == "edts"}) as? Edts {
            return edts.elst.duration
        } else if let mvhd = self.parent?.siblings?.first(where: {$0.identifier == "mvhd"}) as? Mvhd {
            return mvhd.duration
        } else {
            fatalError("Unable to locate file duration in atom data")
        }
    }
    
    /// Initialize a `tkhd` atom for a chapter track
    ///
    /// Specifically for use with chapter tracks. May not work in other contexts.
    @available(OSX 10.12, *)
    init(trackID: Int) throws {
        self.version = Atom.version
        self.flags = Atom.flags

        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.trackID = trackID
        self.layer = 0
        self.alternateGroup = 0
        self.volume = 0
        self.matrixStructure = Data(repeating: 0x00, count: 36)
        self.trackWidth = 0
        self.trackHeight = 0
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        if self.version.int8BE == 0x01 {
            payload.append(self.creationTime.int64.beData)
            payload.append(self.modificationTime.int64.beData)
        } else {
            payload.append(self.creationTime.int32.beData)
            payload.append(self.modificationTime.int32.beData)
        }
        payload.append(self.trackID.int32.beData)
        payload.append(Atom.addReserveData(4))
        payload.append(Atom.addReserveData(8))
        payload.append(self.layer.beData)
        payload.append(self.alternateGroup.beData)
        payload.append(self.volume.beData)
        payload.append(Atom.addReserveData(2))
        payload.append(self.matrixStructure)
        payload.append(self.trackWidth.beData)
        payload.append(self.trackHeight.beData)
        
        if self.version.int8BE == 0x01 {
            try super.init(identifier: "tkhd",
                           size: payload.count + 16,
                           payload: payload)
            self.durationRaw = self.duration.int64.beData
        } else {
            try super.init(identifier: "tkhd",
                           size: payload.count + 12,
                           payload: payload)
            self.durationRaw = self.duration.int32.beData
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        if self.version.int8BE == 0x01 {
            data.append(self.creationTime.int64.beData)
            data.append(self.modificationTime.int64.beData)
        } else {
            data.append(self.creationTime.int32.beData)
            data.append(self.modificationTime.int32.beData)
        }
        data.append(self.trackID.int32.beData)
        data.append(Atom.addReserveData(4))
        if self.version.int8BE == 0x01 {
            data.append(self.duration.int64.beData)
        } else {
            data.append(self.duration.int32.beData)
        }
        data.append(Atom.addReserveData(8))
        data.append(self.layer.beData)
        data.append(self.alternateGroup.beData)
        data.append(self.volume.beData)
        data.append(Atom.addReserveData(2))
        data.append(self.matrixStructure)
        data.append(self.trackWidth.beData)
        data.append(self.trackHeight.beData)
        return data
    }
}