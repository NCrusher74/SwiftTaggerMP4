//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `ac3` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Ac3: Atom {
    
    private var reserved1: Data // 6 bytes
    var dataReferenceIndex: Int // 2 bytes, uint16
    private var reserved2: Data // 8 bytes
    var channelCount: Int // 2 bytes, uint16
    var sampleSize: Int // 2 bytes, uint16
    private var reserved3: Data // 4 bytes
    var samplingRate: Int // 2 bytes, uint16
    private var reserved4: Data // 2 bytes

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.reserved1 = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirstToInt(2)
        self.reserved2 = data.extractFirst(8)
        self.channelCount = data.extractFirstToInt(2)
        self.sampleSize = data.extractFirstToInt(2)
        self.reserved3 = data.extractFirst(4)
        self.samplingRate = data.extractFirstToInt(2)
        self.reserved4 = data.extractFirst(2)
        
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

        guard children.contains(where: {$0.identifier == "dac3"}) else {
            throw Mp4File.Error.Dac3AtomNotFound
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.reserved1)
        data.append(self.dataReferenceIndex.beData(16))
        data.append(self.reserved2)
        data.append(self.channelCount.beData(16))
        data.append(self.sampleSize.beData(16))
        data.append(self.reserved3)
        data.append(self.samplingRate.beData(16))
        data.append(self.reserved4)
        return data
    }
}
