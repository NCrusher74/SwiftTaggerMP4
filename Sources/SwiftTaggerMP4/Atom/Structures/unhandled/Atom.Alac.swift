//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/5/20.
//

import Foundation

/// A class representing a `alac` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Alac: Atom {
    
    private var reserved1: Data // 6 bytes
    var dataReferenceIndex: Int // 2 bytes uint16
    var soundVersion: Int // 2 bytes uint16
    private var reserved2: Data // 6 bytes
    var channels: Int // uint16, 2 bytes
    var compressionID: Int // uint16, 2 bytes
    var packetSize: Int // uint16, 2 bytes
    var timeScale: Int // uint32, 4 bytes
    var samplesPerPacket: Int? // UInt32
    var bytesPerPacket: Int? // Uint32
    var bytesPerFrame: Int? // UInt32
    var bytesPerSample: Int? //UInt32
    private var reserved3: Data? // 20 bytes
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.reserved1 = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirstToInt(2)
        self.soundVersion = data.extractFirstToInt(2)
        self.reserved2 = data.extractFirst(6)
        self.channels = data.extractFirstToInt(2)
        self.compressionID = data.extractFirstToInt(2)
        self.packetSize = data.extractFirstToInt(2)
        self.timeScale = data.extractFirstToInt(32)
        
        if soundVersion > 0 {
            self.samplesPerPacket = data.extractFirstToInt(32)
            self.bytesPerPacket = data.extractFirstToInt(32)
            self.bytesPerFrame = data.extractFirstToInt(32)
            self.bytesPerSample = data.extractFirstToInt(32)
        }
        if soundVersion == 2 {
            self.reserved3 = data.extractFirst(20)
        }
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload,
                   children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.reserved1)
        data.append(self.dataReferenceIndex.beData(16))
        data.append(self.soundVersion.beData(16))
        data.append(self.reserved2)
        data.append(self.channels.beData(16))
        data.append(self.compressionID.beData(16))
        data.append(self.packetSize.beData(16))
        data.append(self.timeScale.beData(32))
        data.append(self.samplesPerPacket?.beData(32) ?? Data())
        data.append(self.bytesPerPacket?.beData(32) ?? Data())
        data.append(self.bytesPerFrame?.beData(32) ?? Data())
        data.append(self.bytesPerSample?.beData(32) ?? Data())
        data.append(self.reserved3 ?? Data())
        return data
    }
}
