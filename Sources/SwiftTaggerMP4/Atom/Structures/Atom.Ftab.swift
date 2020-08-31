//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `ftab` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Ftab: Atom {
    
    var entryCount: Int // 2 bytes UInt16
    var fontTable: FontTable
    
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.entryCount = data.extractTo16BitInt()
        self.fontTable = FontTable(from: data)
        
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
    struct FontTable {
        var entries: [(fontID: Int, fontName: String)]
        
        init(from data: Data) {
            var entryArray: [(Int, String)] = []
            var remainder = data
            while !data.isEmpty {
                let fontID = remainder.extractTo16BitInt()
                if let fontName = remainder.toStringUtf8 {
                    let entry = (fontID, fontName)
                    entryArray.append(entry)
                } else {
                    let fontName = ""
                    let entry = (fontID, fontName)
                    entryArray.append(entry)
                }
            }
            self.entries = entryArray
        }
        
        var entryData: Data {
            var data = Data()
            for entry in entries {
                data.append(entry.fontID.beDataFrom16BitInt)
                data.append(Data(entry.fontName.utf8))
            }
            return data
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.entryCount.beDataFrom16BitInt)
        data.append(self.fontTable.entryData)
        return data
    }
}
