//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/4/20.
//

import Foundation
//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/1/20.
//

import Foundation

/// A class representing a `stbl` atom in an `Mp4File`'s atom structure
class Stbl: Atom {
    /// Initialize a `stbl` atom for parsing from the root structure
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
        
        guard children.contains(where: {$0.identifier == "stsd"}) else {
            throw Mp4File.Error.StsdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stts"}) else {
            throw Mp4File.Error.SttsAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsz"}) else {
            throw Mp4File.Error.StszAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsc"}) else {
            throw Mp4File.Error.StscAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "co64"}) || children.contains(where: {$0.identifier == "stco"}) else {
            throw Mp4File.Error.ChunkOffsetAtomNotFound
        }
        
    }
    
    /// Initialize an `stbl` atom from its children
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        try super.init(identifier: "stbl",
                       size: size,
                       children: children)
        guard children.contains(where: {$0.identifier == "stsd"}) else {
            throw Mp4File.Error.StsdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stts"}) else {
            throw Mp4File.Error.SttsAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsz"}) else {
            throw Mp4File.Error.StszAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stsc"}) else {
            throw Mp4File.Error.StscAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "co64"}) || children.contains(where: {$0.identifier == "stco"}) else {
            throw Mp4File.Error.ChunkOffsetAtomNotFound
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
