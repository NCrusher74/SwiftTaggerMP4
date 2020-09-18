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
    
    var dataReferenceIndex: Int16
    var channelCount: Int16
    var sampleSize: Int16
    var samplingRate: Int16
    var dac3: Dac3
    
    override init(identifier: String,
                  size: Int,
                  payload: Data,
                  children: [Atom]) throws {
        var data = payload
        // required, 6 bytes of reserved data
        _ = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirst(2).int16BE
        // required, 2 bytes of reserved data
        _ = data.extractFirst(2)
        self.channelCount = data.extractFirst(2).int16BE
        self.sampleSize = data.extractFirst(2).int16BE
        // required, 4 bytes of reserved data
        _ = data.extractFirst(4)
        self.samplingRate = data.extractFirst(2).int16BE
        // required, 2 bytes of reserved data
        _ = data.extractFirst(2)
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        if let dac3 = children.first(where: {$0.identifier == "dac3"}) as? Dac3 {
            self.dac3 = dac3
        } else {
            throw Ac3Error.Dac3AtomNotFound
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
        data.append(Atom.addReserveData(2))
        data.append(self.channelCount.beData)
        data.append(self.sampleSize.beData)
        data.append(Atom.addReserveData(4))
        data.append(self.samplingRate.beData)
        data.append(Atom.addReserveData(2))
        for child in children {
            data.append(child.encode)
        }
        return data
    }
    
    private enum Ac3Error: Error {
        /// Error thrown when a required atom is missing
        case Dac3AtomNotFound
    }
}
