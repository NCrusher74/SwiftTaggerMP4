/*
 Sinf.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `sinf` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Sinf: Atom {
    
    var frma: Frma
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        if let frma = children.first(where: {$0.identifier == "frma"}) as? Frma {
            self.frma = frma
        } else {
            throw Mp4File.Error.FrmaAtomNotFound
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
