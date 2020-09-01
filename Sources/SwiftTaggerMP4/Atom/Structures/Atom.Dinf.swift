/*
  Dinf.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `dinf` atom in an `Mp4File`'s atom structure
class Dinf: Atom {
    var dref: Dref
    
    /// Initialize a `dinf` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let dref = children.first(where: {$0.identifier == "dref"}) as? Dref {
            self.dref = dref
        } else {
            throw Mp4File.Error.DrefAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `dinf` atom for building a chapter track
    init(from dref: Dref) throws {
        self.dref = dref
        let size: Int = 8 + dref.size
        try super.init(identifier: "dinf",
                       size: size,
                       children: [dref])
        
        var childIDs = [String]()
        for child in children {
            childIDs.append(child.identifier)
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
