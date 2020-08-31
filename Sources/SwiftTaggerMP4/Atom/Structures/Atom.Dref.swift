//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `dref` atom in an `Mp4File`'s atom structure
class Dref: Atom {
    
    private var versionAndFlags: Data // 4
    var entryCount: Int // 4
    
    /// Initialize a `dref` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractTo32BitInt()
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `dref` atom for building a chapter track
    ///
    /// May not work in other contexts
    init() throws {
        self.versionAndFlags = Atom.versionAndFlags
        self.entryCount = 1
        // these default values will build a "url " atom identical to what I have found in other files with chapter tracks
        let childPayload = Data(repeating: 0x00, count: 3) + Data(repeating: 0x01, count: 1)
        let child = try DrefSubatom(identifier: "url ", size: 12, payload: childPayload)
        let childData = child.encode()
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(entryCount.beDataFrom32BitInt)
        payload.append(childData)
        let size = payload.count + 8
        
        try super.init(identifier: "dref", size: size, children: [child])
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beDataFrom32BitInt)
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
