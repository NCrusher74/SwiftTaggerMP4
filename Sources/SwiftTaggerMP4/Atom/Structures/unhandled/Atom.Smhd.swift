/*
  Smhd.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `smhd` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Smhd: Atom {

    private var versionAndFlags: Data
    private var reserved: Data

    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.reserved = data.extractFirst(4)
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.reserved)
        return data
    }
}
