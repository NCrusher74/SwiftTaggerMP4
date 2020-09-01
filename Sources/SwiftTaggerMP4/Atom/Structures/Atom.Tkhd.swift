///*
//  Tkhd.swift
//
//
//  Created by Nolaine Crusher on 6/20/20.
//*/
//
//import Foundation
//
///// A class representing a `tkhd` atom in an `Mp4File`'s atom structure
//class Tkhd: Atom {
//    // contentData count should be a total of 84 bytes
//    private var versionAndFlags: Data
//    var creationTime: UInt32
//    var modificationTime: UInt32
//    var trackID: Int
//    private var reserved1: Data
//    private var durationRaw: Data
//    private var reserved2: Data
//    var layer: Int
//    var alternateGroup: Int
//    var volume: Int
//    private var reserved3: Data
//    private var matrixStructure: Data
//    var trackWidth: Int
//    var trackHeight: Int
//    
//    /// Initialize a `tkhd` atom for parsing from the root structure
//    override init(identifier: String, size: Int, payload: Data) throws {
//        var data = payload
//        
//        guard data.count == 84 else {
//            throw Mp4File.Error.InvalidTrackHeaderData
//        }
//        
//        self.versionAndFlags = data.extractFirst(4)
//        self.creationTime = data.extractToUInt32BE()
//        self.modificationTime = data.extractToUInt32BE()
//        self.trackID = data.extractTo32BitInt()
//        self.reserved1 = data.extractFirst(4)
//        self.durationRaw = data.extractFirst(4)
//        self.reserved2 = data.extractFirst(8)
//        self.layer = data.extractTo16BitInt()
//        self.alternateGroup = data.extractTo16BitInt()
//        self.volume = data.extractTo16BitInt()
//        self.reserved3 = data.extractFirst(2)
//        self.matrixStructure = data.extractFirst(36)
//        self.trackWidth = data.extractTo32BitInt()
//        self.trackHeight = data.extractTo32BitInt()
//        
//        try super.init(identifier: identifier,
//                       size: size,
//                       payload: payload)
//    }
//    
//    //    /** Duration - A time value that indicates the duration of this track (in the MOVIES’s time coordinate system (from mvhd atom)). Note that this property is derived from the track’s edits. The value of this field is equal to the sum of the durations of all of the track’s edits. If there is no edit list, then the duration is the sum of the sample durations, converted into the MOVIE timescale. */
//    var duration: Int {
//        if let duration = Mp4File.elstDuration {
//            return duration
//        } else {
//            return self.durationRaw.toInt32
//        }
//    }
//    
//    /// Initialize a `tkhd` atom for a chapter track
//    ///
//    /// Specifically for use with chapter tracks. May not work in other contexts.
//    @available(OSX 10.12, *)
//    init(trackID: Int) throws {
//        self.versionAndFlags = Atom.versionAndFlags
//        
//        self.creationTime = Date().dateIntervalSince1904
//        self.modificationTime = Date().dateIntervalSince1904
//        self.trackID = trackID
//        self.reserved1 = Data(repeating: 0x00, count: 4)
//        if let duration = Mp4File.elstDuration {
//            self.durationRaw = duration.beDataFrom32BitInt
//        } else {
//            self.durationRaw = Mp4File.duration.beDataFrom32BitInt
//        }
//        self.reserved2 = Data(repeating: 0x00, count: 8)
//        self.layer = 0
//        self.alternateGroup = 0
//        self.volume = 0
//        self.reserved3 = Data(repeating: 0x00, count: 2)
//        self.matrixStructure = Data(repeating: 0x00, count: 36)
//        self.trackWidth = 0
//        self.trackHeight = 0
//        
//        var payload = Data()
//        payload.append(self.versionAndFlags)
//        payload.append(self.creationTime.beData)
//        payload.append(self.modificationTime.beData)
//        payload.append(self.trackID.beDataFrom32BitInt)
//        payload.append(self.reserved1)
//        payload.append(self.durationRaw)
//        payload.append(self.reserved2)
//        payload.append(self.layer.beDataFrom16BitInt)
//        payload.append(self.alternateGroup.beDataFrom16BitInt)
//        payload.append(self.volume.beDataFrom16BitInt)
//        payload.append(self.reserved3)
//        payload.append(self.matrixStructure)
//        payload.append(self.trackWidth.beDataFrom32BitInt)
//        payload.append(self.trackHeight.beDataFrom32BitInt)
//        guard payload.count == 84 else { fatalError(Mp4File.Error.InvalidTrackHeaderData.localizedDescription)
//        }
//        
//        try super.init(identifier: "tkhd",
//                       size: payload.count + 8,
//                       payload: payload)
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.versionAndFlags)
//        data.append(self.creationTime.beData)
//        data.append(self.modificationTime.beData)
//        data.append(self.trackID.beDataFrom32BitInt)
//        data.append(self.reserved1)
//        data.append(self.durationRaw)
//        data.append(self.reserved2)
//        data.append(self.layer.beDataFrom16BitInt)
//        data.append(self.alternateGroup.beDataFrom16BitInt)
//        data.append(self.volume.beDataFrom16BitInt)
//        data.append(self.reserved3)
//        data.append(self.matrixStructure)
//        data.append(self.trackWidth.beDataFrom32BitInt)
//        data.append(self.trackHeight.beDataFrom32BitInt)
//        return data
//    }
//}
