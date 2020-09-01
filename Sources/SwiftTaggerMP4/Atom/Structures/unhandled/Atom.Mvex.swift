/*
 Mvex.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `mvex` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Mvex: Atom {
    
    var trex: Trex
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }
        if let trex = children.first(where: {$0.identifier == "trex"}) as? Trex {
            self.trex = trex
        } else {
            throw Mp4File.Error.TrexAtomNotFound
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
