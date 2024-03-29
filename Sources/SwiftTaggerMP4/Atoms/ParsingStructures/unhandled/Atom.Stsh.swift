/*
  Stsh.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `stsh` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Stsh: Atom {

    private var version: Data
    private var flags: Data
    var entryCount: Int
    var sampleTable: [(shadowedSampleNumber: Int, syncSampleNumber: Int)]
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        self.entryCount = data.extractToInt(4)
        
        var entryArray: [(shadowedSampleNumber: Int, syncSampleNumber: Int)] = []
        while !data.isEmpty {
            let shadowSampleNumber = data.extractToInt(4)
            let syncSampleNumber = data.extractToInt(4)
            let entry = (shadowSampleNumber, syncSampleNumber)
            entryArray.append(entry)
        }
        self.sampleTable = entryArray
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.uInt32.beData)
        for entry in self.sampleTable {
            data.append(entry.shadowedSampleNumber.uInt32.beData)
            data.append(entry.syncSampleNumber.uInt32.beData)
        }
        return data
    }
}
