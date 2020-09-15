/*
 Tfhd.swift
 
 
 Created by Nolaine Crusher on 6/30/20.
 */

import Foundation

/// A class representing a `tfhd` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Tfhd: Atom {
    
    var version: Data
    var flags: Data
    var trackID: Int
    var baseDataOffset: Int64?
    var sampleDescriptionIndex: Int32?
    var defaultSampleDuration: Int32?
    var defaultSampleSize: Int32?
    var defaultSampleFlags: Int32?
    
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.trackID = data.extractToInt(4)
        
        let flagsArray = [UInt8](flags)
        if let lastFlag = flagsArray.last {
            if lastFlag & 0b0000_0001 == lastFlag {
                self.baseDataOffset = data.extractFirst(8).int64BE
            }
            if lastFlag & 0b0000_0010 == lastFlag {
                self.sampleDescriptionIndex = data.extractFirst(4).int32BE
            }
            if lastFlag & 0b0000_1000 == lastFlag {
                self.defaultSampleDuration = data.extractFirst(4).int32BE
            }
            if lastFlag & 0b0001_0000 == lastFlag {
                self.defaultSampleSize = data.extractFirst(4).int32BE
            }
            if lastFlag & 0b0010_0000 == lastFlag {
                self.defaultSampleFlags = data.extractFirst(4).int32BE
            }
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.trackID.int32.beData)
        if let baseDataOffset = self.baseDataOffset {
            data.append(baseDataOffset.beData)
        }
        if let sampleDescriptionIndex = self.sampleDescriptionIndex {
            data.append(sampleDescriptionIndex.beData)
        }
        if let defaultSampleDuration = self.defaultSampleDuration {
            data.append(defaultSampleDuration.beData)
        }
        if let defaultSampleSize = self.defaultSampleSize {
            data.append(defaultSampleSize.beData)
        }
        if let defaultSampleFlags = self.defaultSampleFlags {
            data.append(defaultSampleFlags.beData)
        }
        return data
    }
}
