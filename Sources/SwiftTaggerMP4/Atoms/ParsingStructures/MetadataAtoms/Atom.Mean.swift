/*
 Mean.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `mean` atom in an `Mp4File`'s atom structure
///
/// The `mean` atom is always a sub-atom of a freeform metadata atom, found in the `moov.udta.meta.ilst` sub-atoms.
class Mean: Atom {

    private var version: Data
    private var flags: Data
    /// The string content of the `mean` atom. This is pretty much always `com.apple.iTunes`
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
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(Data(self.stringValue.utf8))
        return data
    }
}

