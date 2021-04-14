/*
 Name.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `name` atom in an `Mp4File`'s atom structure
///
/// The `name` atom is always a sub-atom of a freeform metadata atom, found in the `moov.udta.meta.ilst` sub-atoms. It contains the free-form identifier for the atom.
class Name: Atom {
    private var version: Data
    private var flags: Data
    /// The freeform identifier of an unknown metadata atom
    var stringValue: String
    
    /// Initialize a `name` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        let string = String(data: data, encoding: .utf8) ?? ""
        self.stringValue = string
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
    /// Initialize a `name` atom with its content string
    init(atomName: String) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.stringValue = atomName
        let utf8 = atomName.utf8
        
        let reserve = 4 + utf8.count
        var payload = Data()
        payload.reserveCapacity(reserve)
        
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(contentsOf: utf8)
        
        let size = reserve + 8
        try super.init(identifier: "name",
                       size: size,
                       payload: payload)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        let nameData = Data(self.stringValue.utf8)
        data.append(nameData)
        return data
    }
}
