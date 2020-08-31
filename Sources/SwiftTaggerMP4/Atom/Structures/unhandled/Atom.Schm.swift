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

    var schemeType: Int
    var schemeVersion: Int
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.schemeType = data.extractTo32BitInt()
        self.schemeVersion = data.extractTo32BitInt()
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.schemeType.beDataFrom32BitInt)
        data.append(self.schemeVersion.beDataFrom32BitInt)
        return data
    }
}
