/*
  Edts.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `edts` atom in an `Mp4File`'s atom structure
class Edts: Atom {
    var elst: Elst
    /// Initialize a `edts` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let elst = children.first(where: {$0.identifier == "elst"}) as? Elst {
            self.elst = elst
        } else {
            throw Mp4File.Error.ElstAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
}
