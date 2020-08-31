//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `nmhd` atom in an `Mp4File`'s atom structure
class Nmhd: Atom {
    private var versionAndFlags: Data
    
    /// Initialize a `nmhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize an `nmhd` atom for building a chapter track
    init() throws {
        self.versionAndFlags = Atom.versionAndFlags
        try super.init(identifier: "nmhd", size: 12, payload: self.versionAndFlags)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        return data
    }
}
