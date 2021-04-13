/*
 Alac.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `alac` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class SoundAtom: Atom {
    
    var dataReferenceIndex: UInt16
    var soundVersion: Int
    var channels: UInt16
    var compressionID: UInt16
    var packetSize: UInt16
    var timeScale: UInt32
    var samplesPerPacket: UInt32?
    var bytesPerPacket: UInt32?
    var bytesPerFrame: UInt32?
    var bytesPerSample: UInt32?
    
    var esds: PassThrough?
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        _ = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirst(2).uInt16BE
        self.soundVersion = data.extractToInt(2)
        _ = data.extractFirst(6)
        self.channels = data.extractFirst(2).uInt16BE
        self.compressionID = data.extractFirst(2).uInt16BE
        self.packetSize = data.extractFirst(2).uInt16BE
        self.timeScale = data.extractFirst(4).uInt32BE
        
        if soundVersion > 0 {
            self.samplesPerPacket = data.extractFirst(4).uInt32BE
            self.bytesPerPacket = data.extractFirst(4).uInt32BE
            self.bytesPerFrame = data.extractFirst(4).uInt32BE
            self.bytesPerSample = data.extractFirst(4).uInt32BE
        }
        if soundVersion == 2 {
            _ = data.extractFirst(20)
        }
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }        
        if let esds = children.first(where: {$0.identifier == "esds"}) as? PassThrough {
            self.esds = esds
        } else {
            if identifier == "mp4a" {
                throw SoundAtomError.EsdsAtomNotFound
            } else {
                self.esds = nil
            }
        }

        try super.init(identifier: identifier,
                   size: size,
                   payload: payload,
                   children: children)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(Atom.addReserveData(6))
        data.append(self.dataReferenceIndex.beData)
        data.append(self.soundVersion.int16.beData)
        data.append(Atom.addReserveData(6))
        data.append(self.channels.beData)
        data.append(self.compressionID.beData)
        data.append(self.packetSize.beData)
        data.append(self.timeScale.beData)
        if let samplesPerPacket = self.samplesPerPacket {
            data.append(samplesPerPacket.beData)
        }
        if let bytesPerPacket = self.bytesPerPacket {
            data.append(bytesPerPacket.beData)
        }
        if let bytesPerFrame = self.bytesPerFrame {
            data.append(bytesPerFrame.beData)
        }
        if let bytesPerSample = self.bytesPerSample {
            data.append(bytesPerSample.beData)
        }
        data.append(Atom.addReserveData(20))
        for child in children {
            data.append(child.encode)
        }
        return data
    }
}

enum SoundAtomError: Error {
    /// Error thrown when a required atom is missing
    case EsdsAtomNotFound
}
