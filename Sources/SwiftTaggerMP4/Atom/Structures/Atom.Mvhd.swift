///*
//  Mvhd.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//*/
//
//import Foundation
//
///// A class representing a `mvhd` atom in an `Mp4File`'s atom structure
//class Mvhd: Atom {
//    
//    private var versionAndFlags: Data
//    var creationTime: UInt32
//    var modificationTime: UInt32
//    /// the number of "ticks" per second in the media
//    var timeScale: Int
//    /// the duration in milliseconds
//    var duration: Int
//    var preferredRate: Int
//    var preferredVolume: Int
//    private var reserved: Data
//    private var matrixStructure: Data
//    var previewTime: Int
//    var previewDuration: Int
//    var posterTime: Int
//    var selectionTime: Int
//    var selectionDuration: Int
//    var currentTime: Int
//    var nextTrackID: Int
//    
//    /// Initialize a `mvhd` atom for parsing from the root structure
//    override init(identifier: String, size: Int, payload: Data) throws {
//        var data = payload
//        guard data.count == 100 else { throw Mp4File.Error.InvalidMovieHeaderData }
//        
//        self.versionAndFlags = data.extractFirst(4)
//        self.creationTime = data.extractFirst(4).toUInt32
//        self.modificationTime = data.extractFirst(4).toUInt32
//        let preliminaryTimeScale = data.extractTo32BitDouble()
//        let preliminaryDuration = data.extractTo32BitDouble()
//        if preliminaryTimeScale == 1000 {
//            // duration is already in milliseconds, no need to calculate
//            self.duration = Int(preliminaryDuration)
//        } else {
//            // divide the raw duration by the timescale to get the time in seconds
//            let durationInSeconds: Double = preliminaryDuration / preliminaryTimeScale
//            // multiply the duration in seconds by 1000 to get milliseconds
//            self.duration = Int(durationInSeconds * 1000)
//        }
//        self.timeScale = Int(preliminaryTimeScale)
//        
//        self.preferredRate = data.extractTo32BitInt()
//        self.preferredVolume = data.extractTo16BitInt()
//        self.reserved = data.extractFirst(10)
//        // we're not touching this
//        self.matrixStructure = data.extractFirst(36)
//        self.previewTime = data.extractTo32BitInt()
//        self.previewDuration = data.extractTo32BitInt()
//        self.posterTime = data.extractTo32BitInt()
//        self.selectionTime = data.extractTo32BitInt()
//        self.selectionDuration = data.extractTo32BitInt()
//        self.currentTime = data.extractTo32BitInt()
//        self.nextTrackID = data.extractTo32BitInt()
//        
//        try super.init(identifier: identifier, size: size, payload: payload)
//    }
//    
//    /// Increment the `nextTrackID` property when the current `nextTrackID` is used
//    func incrementNextTrackID() {
//        self.nextTrackID += 1
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.versionAndFlags)
//        data.append(self.creationTime.beData)
//        data.append(self.modificationTime.beData)
//        data.append(self.timeScale.beDataFrom32BitInt)
//        data.append(self.duration.beDataFrom32BitInt)
//        data.append(self.preferredRate.beDataFrom32BitInt)
//        data.append(self.preferredVolume.beDataFrom16BitInt)
//        data.append(self.reserved)
//        data.append(self.matrixStructure)
//        data.append(self.previewTime.beDataFrom32BitInt)
//        data.append(self.previewDuration.beDataFrom32BitInt)
//        data.append(self.posterTime.beDataFrom32BitInt)
//        data.append(self.selectionTime.beDataFrom32BitInt)
//        data.append(self.selectionDuration.beDataFrom32BitInt)
//        data.append(self.currentTime.beDataFrom32BitInt)
//        data.append(self.nextTrackID.beDataFrom32BitInt)
//        return data
//    }
//}
