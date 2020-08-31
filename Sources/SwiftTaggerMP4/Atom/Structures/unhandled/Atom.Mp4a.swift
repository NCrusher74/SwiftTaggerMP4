//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/5/20.
//

import Foundation

/// A class representing a `mp4a` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Mp4a: Atom {
    
    private var reserved1: Data
    var dataReferenceIndex: Int
    var soundVersion: Int
    private var reserved2: Data
    var channels: Int
    var compressionID: Int
    var packetSize: Int
    var timeScale: Int
    var samplesPerPacket: Int?
    var bytesPerPacket: Int?
    var bytesPerFrame: Int?
    var bytesPerSample: Int?
    private var reserved3: Data?
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.reserved1 = data.extractFirst(6)
        self.dataReferenceIndex = data.extractTo16BitInt()
        self.soundVersion = data.extractTo16BitInt()
        self.reserved2 = data.extractFirst(6)
        self.channels = data.extractTo16BitInt()
        self.compressionID = data.extractTo16BitInt()
        self.packetSize = data.extractTo16BitInt()
        self.timeScale = data.extractTo32BitIntViaDouble()
        
        if soundVersion > 0 {
            self.samplesPerPacket = data.extractTo32BitInt()
            self.bytesPerPacket = data.extractTo32BitInt()
            self.bytesPerFrame = data.extractTo32BitInt()
            self.bytesPerSample = data.extractTo32BitInt()
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

        guard children.contains(where: {$0.identifier == "esds"}) else {
            throw Mp4File.Error.EsdsAtomNotFound
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.reserved1)
        data.append(self.dataReferenceIndex.beDataFrom16BitInt)
        data.append(self.soundVersion.beDataFrom16BitInt)
        data.append(self.reserved2)
        data.append(self.channels.beDataFrom16BitInt)
        data.append(self.compressionID.beDataFrom16BitInt)
        data.append(self.packetSize.beDataFrom16BitInt)
        data.append(self.timeScale.beDataFrom32BitInt)
        data.append(self.samplesPerPacket?.beDataFrom32BitInt ?? Data())
        data.append(self.bytesPerPacket?.beDataFrom32BitInt ?? Data())
        data.append(self.bytesPerSample?.beDataFrom32BitInt ?? Data())
        data.append(self.bytesPerSample?.beDataFrom32BitInt ?? Data())
        data.append(self.reserved3 ?? Data())
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
