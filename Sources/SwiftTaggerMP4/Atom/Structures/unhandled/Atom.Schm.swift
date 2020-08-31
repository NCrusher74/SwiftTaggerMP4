//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `schm` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Schm: Atom {

    var schemeType: Int // 4
    var schemeVersion: Int // 4
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.schemeType = data.extractFirstToInt(32)
        self.schemeVersion = data.extractFirstToInt(32)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.schemeType.beData(32))
        data.append(self.schemeVersion.beData(32))
        return data
    }
}
