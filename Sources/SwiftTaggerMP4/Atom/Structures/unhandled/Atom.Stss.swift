/*
  Stss.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `stss` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Stss: Atom {

    private var version: Data
    private var flags: Data
    var entryCount: Int
    var sampleTable: [Int]
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        self.entryCount = data.extractFirst(4).int32BE.toInt
        var entryArray: [Int] = []
        while !data.isEmpty {
            let sampleNumber = data.extractFirst(4).int32BE.toInt
            entryArray.append(sampleNumber)
        }
        self.sampleTable = entryArray
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
        
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.int32.beData)
        for entry in self.sampleTable {
            data.append(entry.int32.beData)
        }
        return data
    }
}
