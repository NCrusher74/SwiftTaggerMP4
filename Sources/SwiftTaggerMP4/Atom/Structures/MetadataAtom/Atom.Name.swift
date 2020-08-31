//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/31/20.
//

import Foundation

/// A class representing a `name` atom in an `Mp4File`'s atom structure
class Name: Atom {
    private var versionAndFlags: Data
    var stringValue: String
    /// Initialize a `name` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        let string = String(data: data, encoding: .utf8) ?? ""
        self.stringValue = string
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
    /// Initialize a `name` atom with its content string
    init(atomName: String) throws {
        self.versionAndFlags = Atom.versionAndFlags
        self.stringValue = atomName
        
        let nameData = Data(atomName.utf8)
        
        var payload = Data()
        payload.append(versionAndFlags)
        payload.append(nameData)
        
        let size = payload.count + 8
        try super.init(identifier: "name",
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        let nameData = Data(self.stringValue.utf8)
        data.append(nameData)
        return data
    }
}
