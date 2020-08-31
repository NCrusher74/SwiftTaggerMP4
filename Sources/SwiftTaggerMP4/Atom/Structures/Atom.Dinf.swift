//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `dinf` atom in an `Mp4File`'s atom structure
class Dinf: Atom {
    /// Initialize a `dinf` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
        guard children.contains(where: {$0.identifier == "dref"}) else {
            throw Mp4File.Error.DrefAtomNotFound
        }
    }
    
    /// Initialize a `dinf` atom for building a chapter track
    init(from dref: Dref) throws {
        let size: Int = 8 + dref.size
        
        try super.init(identifier: "dinf",
                       size: size,
                       children: [dref])
        
        var childIDs = [String]()
        for child in children {
            childIDs.append(child.identifier)
        }
        guard children.contains(where: {$0.identifier == "dref"}) else {
            throw Mp4File.Error.DrefAtomNotFound
        }
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
}
