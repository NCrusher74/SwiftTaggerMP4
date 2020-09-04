/*
  Ftab.swift


  Created by Nolaine Crusher on 7/4/20.
*/

import Foundation

/// A class representing a `ftab` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Ftab: Atom {
    
    var entryCount: Int
    var fontTable: [(fontID: Int, fontName: String)]
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.entryCount = data.extractToInt(2)
        var table = [(fontID: Int, fontName: String)]()
        while !data.isEmpty {
            let fontID = data.extractToInt(2)
            let fontName = data.stringUtf8 ?? ""
            let entry = (fontID, fontName)
            table.append(entry)
        }
        self.fontTable = table

        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.entryCount.int16.beData)
        for entry in self.fontTable {
            data.append(entry.fontID.int16.beData)
            data.append(entry.fontName.encodedUtf8)
        }
        return data
    }
}
