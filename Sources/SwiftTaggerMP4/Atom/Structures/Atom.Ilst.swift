/*
  Ilst.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `ilst` atom in an `Mp4File`'s atom structure
class Ilst: Atom {
    /// Initialize a `ilst` atom for parsing from the root structure
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
    }
    
    override var contentData: Data {
        var data = Data()
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
