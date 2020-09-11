/*
 Mean.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `mean` atom in an `Mp4File`'s atom structure
class Mean: Atom {
    private var version: Data
    private var flags: Data
    var stringValue: String

    /// Initialize a `mean` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        let string = String(data: data, encoding: .utf8) ?? ""
        self.stringValue = string
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
    /// Initialize a `mean` atom for creating an unknown metadata atom
    init() throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.stringValue = "com.apple.iTunes"
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(Data(self.stringValue.utf8))
        
        let size = payload.count + 8
        try super.init(identifier: "mean",
                       size: size,
                       payload: payload)
    }
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(Data(self.stringValue.utf8))
        return data
    }
}

