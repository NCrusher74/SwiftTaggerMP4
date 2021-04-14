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
        let utf8 = stringValue.utf8

        let reserve = 4 + utf8.count
        var payload = Data()
        payload.reserveCapacity(reserve)

        payload.append(self.version)
        payload.append(self.flags)
        payload.append(contentsOf: utf8)
        
        let size = reserve + 8
        try super.init(identifier: "mean",
                       size: size,
                       payload: payload)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)

        data.append(self.version)
        data.append(self.flags)
        data.append(Data(self.stringValue.utf8))
        return data
    }
}

