/*
  Mvhd.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `mvhd` atom in an `Mp4File`'s atom structure
class Mvhd: Atom {
    
    var version: Data
    private var flags: Data
    var creationTime: Int
    var modificationTime: Int
    /// the number of "ticks" per second in the media
    var timeScale: Double
    /// the duration in milliseconds
    var duration: Double
    var preferredRate: Int32
    var preferredVolume: Int16
    private var matrixStructure: Data
    var previewTime: Int32
    var previewDuration: Int32
    var posterTime: Int32
    var selectionTime: Int32
    var selectionDuration: Int32
    var currentTime: Int32
    var nextTrackID: Int
    
    /// Initialize a `mvhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        guard data.count == 100 else { throw Mp4File.Error.InvalidMovieHeaderData }
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        if self.version.int8BE == 0x01 {
            self.creationTime = data.extractToInt(8)
            self.modificationTime = data.extractToInt(8)
        } else {
            self.creationTime = data.extractToInt(4)
            self.modificationTime = data.extractToInt(4)
        }
        
        let preliminaryTimeScale = data.extractToDouble(4)
        var preliminaryDuration = Double()
        if self.version.int8BE == 0x01 {
            preliminaryDuration = data.extractToDouble(8)
        } else {
            preliminaryDuration = data.extractToDouble(4)
        }
        if preliminaryTimeScale == 1000 {
            // duration is already in milliseconds, no need to calculate
            self.duration = preliminaryDuration
        } else {
            // divide the raw duration by the timescale to get the time in seconds
            let durationInSeconds: Double = preliminaryDuration / preliminaryTimeScale
            // multiply the duration in seconds by 1000 to get milliseconds
            self.duration = durationInSeconds * 1000
        }
        self.timeScale = preliminaryTimeScale
        
        self.preferredRate = data.extractFirst(4).int32BE
        self.preferredVolume = data.extractFirst(2).int16BE
        // reserved
        _ = data.extractFirst(10)
        // we're not touching this
        self.matrixStructure = data.extractFirst(36)
        self.previewTime = data.extractFirst(4).int32BE
        self.previewDuration = data.extractFirst(4).int32BE
        self.posterTime = data.extractFirst(4).int32BE
        self.selectionTime = data.extractFirst(4).int32BE
        self.selectionDuration = data.extractFirst(4).int32BE
        self.currentTime = data.extractFirst(4).int32BE
        self.nextTrackID = data.extractFirst(4).int32BE.toInt
        
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
    /// Increment the `nextTrackID` property when the current `nextTrackID` is used
    func incrementNextTrackID() {
        self.nextTrackID += 1
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
        data.append(self.timeScale.int32.beData)
        if self.version.int8BE == 0x01 {
            data.append(self.duration.int64.beData)
        } else {
            data.append(self.duration.int32.beData)
        }
        data.append(self.preferredRate.beData)
        data.append(self.preferredVolume.beData)
        data.append(Atom.addReserveData(10))
        data.append(self.matrixStructure)
        data.append(self.previewTime.beData)
        data.append(self.previewDuration.beData)
        data.append(self.posterTime.beData)
        data.append(self.selectionTime.beData)
        data.append(self.selectionDuration.beData)
        data.append(self.currentTime.beData)
        data.append(self.nextTrackID.int32.beData)
        return data
    }
}
