/*
 Ac3.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `ac3` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Ac3: Atom {
    
    private var reserved1: Data
    var dataReferenceIndex: Int
    private var reserved2: Data
    var channelCount: Int
    var sampleSize: Int
    private var reserved3: Data
    var samplingRate: Int
    private var reserved4: Data

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.reserved1 = data.extractFirst(6)
        self.dataReferenceIndex = data.extractTo16BitInt()
        self.reserved2 = data.extractFirst(8)
        self.channelCount = data.extractTo16BitInt()
        self.sampleSize = data.extractTo16BitInt()
        self.reserved3 = data.extractFirst(4)
        self.samplingRate = data.extractTo16BitInt()
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
        data.append(self.dataReferenceIndex.beDataFrom16BitInt)
        data.append(self.reserved2)
        data.append(self.channelCount.beDataFrom16BitInt)
        data.append(self.sampleSize.beDataFrom16BitInt)
        data.append(self.reserved3)
        data.append(self.samplingRate.beDataFrom16BitInt)
        data.append(self.reserved4)
        return data
    }
}
