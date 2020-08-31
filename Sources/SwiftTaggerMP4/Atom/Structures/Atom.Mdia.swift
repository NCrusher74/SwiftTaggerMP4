//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `mdia` atom in an `Mp4File`'s atom structure
class Mdia: Atom {
    /// Initialize a `mdia` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        guard children.contains(where: {$0.identifier == "mdhd"}) else {
            throw Mp4File.Error.MdhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "minf"}) else {
            throw Mp4File.Error.MinfAtomNotFound
        }
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `mdia` atom from its child atoms
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        try super.init(identifier: "mdia",
                       size: size,
                       children: children)
        guard children.contains(where: {$0.identifier == "mdhd"}) else {
            throw Mp4File.Error.MdhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "minf"}) else {
            throw Mp4File.Error.MinfAtomNotFound
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

