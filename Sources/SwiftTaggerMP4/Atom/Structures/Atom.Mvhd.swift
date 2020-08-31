//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `mvhd` atom in an `Mp4File`'s atom structure
class Mvhd: Atom {
    
    private var versionAndFlags: Data // 4 bytes
    var creationTime: UInt32 // 4 bytes
    var modificationTime: UInt32 // 4 bytes
    /// the number of "ticks" per second in the media
    var timeScale: Int // 4 bytes
    /// the duration in milliseconds
    var duration: Int // 4 bytes
    var preferredRate: Int // 4 bytes
    var preferredVolume: Int // 2 bytes
    private var reserved: Data // 10 bytes
    private var matrixStructure: Data // 36 bytes
    var previewTime: Int // 4 bytes
    var previewDuration: Int // 4 bytes
    var posterTime: Int // 4 bytes
    var selectionTime: Int // 4 bytes
    var selectionDuration: Int // 4 bytes
    var currentTime: Int // 4 bytes
    var nextTrackID: Int // 4 bytes
    
    /// Initialize a `mvhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        guard data.count == 100 else { throw Mp4File.Error.InvalidMovieHeaderData }
        
        self.versionAndFlags = data.extractFirst(4)
        self.creationTime = data.extractFirst(4).toUInt32
        self.modificationTime = data.extractFirst(4).toUInt32
        self.timeScale = data.extractFirstToInt(4)
        let preliminaryDuration = data.extractFirstToInt(4)
        if timeScale == 1000 {
            // duration is already in milliseconds, no need to calculate
            self.duration = preliminaryDuration
        } else {
            // divide the raw duration by the timescale to get the time in seconds
            let durationInSeconds: Double = Double(preliminaryDuration / timeScale)
            // multiply the duration in seconds by 1000 to get milliseconds
            self.duration = Int(durationInSeconds * Double(1000))
        }
        
        self.preferredRate = data.extractFirstToInt(4)
        self.preferredVolume = data.extractFirstToInt(2)
        self.reserved = data.extractFirst(10)
        // we're not touching this
        self.matrixStructure = data.extractFirst(36)
        self.previewTime = data.extractFirstToInt(4)
        self.previewDuration = data.extractFirstToInt(4)
        self.posterTime = data.extractFirstToInt(4)
        self.selectionTime = data.extractFirstToInt(4)
        self.selectionDuration = data.extractFirstToInt(4)
        self.currentTime = data.extractFirstToInt(4)
        self.nextTrackID = data.extractFirstToInt(4)
        
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
    /// Increment the `nextTrackID` property when the current `nextTrackID` is used
    func incrementNextTrackID() {
        self.nextTrackID += 1
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.creationTime.beData)
        data.append(self.modificationTime.beData)
        data.append(self.timeScale.beData(32))
        data.append(self.duration.beData(32))
        data.append(self.preferredRate.beData(32))
        data.append(self.preferredVolume.beData(16))
        data.append(self.reserved)
        data.append(self.matrixStructure)
        data.append(self.previewTime.beData(32))
        data.append(self.previewDuration.beData(32))
        data.append(self.posterTime.beData(32))
        data.append(self.selectionTime.beData(32))
        data.append(self.selectionDuration.beData(32))
        data.append(self.currentTime.beData(32))
        data.append(self.nextTrackID.beData(32))
        return data
    }
}
