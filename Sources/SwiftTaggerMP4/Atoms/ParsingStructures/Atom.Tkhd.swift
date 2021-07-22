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
    var trackID: Int
    private var durationRaw: Data
    var layer: UInt16
    var alternateGroup: UInt16
    var volume: UInt16
    var trackWidth: UInt32
    var trackHeight: UInt32
    
    /// Initialize a `tkhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        let creationTime: Int
        let modificationTime: Int
        if self.version.uInt8BE == 0x01 {
            creationTime = data.extractToInt(8)
            modificationTime = data.extractToInt(8)
        } else {
            creationTime = data.extractToInt(4)
            modificationTime = data.extractToInt(4)
        }

        self.trackID = data.extractToInt(4)

        _ = data.extractFirst(4)

        if self.version.uInt8BE == 0x01 {
            self.durationRaw = data.extractFirst(8)
        } else {
            self.durationRaw = data.extractFirst(4)
        }

        _ = data.extractFirst(8)

        self.layer = data.extractFirst(2).uInt16BE
        self.alternateGroup = data.extractFirst(2).uInt16BE
        self.volume = data.extractFirst(2).uInt16BE
        _ = data.extractFirst(2)

        let matrixStructure = data.extractFirst(36)

        self.trackWidth = data.extractFirst(4).uInt32BE
        self.trackHeight = data.extractFirst(4).uInt32BE
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
        self.matrixStructure = matrixStructure
        self.creationTime = creationTime        
        self.modificationTime = modificationTime
    }
    
    //   Duration - A time value that indicates the duration of this track (in the MOVIES’s time coordinate system (from mvhd atom)). Note that this property is derived from the track’s edits. The value of this field is equal to the sum of the durations of all of the track’s edits. If there is no edit list, then the duration is the sum of the sample durations (from stts atom?), converted into the MOVIE timescale.
    var duration: Double {
        if let edts = self.siblings?.first(where: {$0.identifier == "edts"}) as? Edts {
            return edts.elst.duration
        } else if let mvhd = self.parent?.siblings?.first(where: {$0.identifier == "mvhd"}) as? Mvhd {
            return mvhd.duration
        } else if let moov = self.parent?.parent as? Moov {
            return Double(moov.soundTrack.mdia.minf.stbl.stts.mediaDuration)
        } else {
            if self.version.uInt8BE == 0x01 {
                return self.durationRaw.uInt64BE.double
            } else {
                return self.durationRaw.uInt32BE.double
            }
        }
    }
    
    /// Initialize a `tkhd` atom for a chapter track
    ///
    /// Specifically for use with chapter tracks. May not work in other contexts.
    init(mediaDuration: Double, trackID: Int) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        
        self.trackID = trackID
        if self.version.uInt8BE == 0x01 {
            self.durationRaw = mediaDuration.uInt64.beData
        } else {
            self.durationRaw = mediaDuration.uInt32.beData
        }

        self.layer = 0
        self.alternateGroup = 0
        self.volume = 0
        self.trackWidth = 0
        self.trackHeight = 0
        
        var size = 80
        if self.version.uInt8BE == 0x01 {
            size += 24
        } else {
            size += 12
        }
        try super.init(identifier: "tkhd",
                       size: size)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)
        
        data.append(self.version)
        data.append(self.flags)
        if self.version.uInt8BE == 0x01 {
            data.append(self.creationTime.uInt64.beData)
            data.append(self.modificationTime.uInt64.beData)
        } else {
            data.append(self.creationTime.uInt32.beData)
            data.append(self.modificationTime.uInt32.beData)
        }
        data.append(self.trackID.uInt32.beData)
        data.append(Atom.addReserveData(4))
        if self.version.uInt8BE == 0x01 {
            data.append(self.duration.uInt64.beData)
        } else {
            data.append(self.duration.uInt32.beData)
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
