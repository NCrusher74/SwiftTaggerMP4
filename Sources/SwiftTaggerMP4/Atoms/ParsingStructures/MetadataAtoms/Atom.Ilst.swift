/*
 Ilst.swift
 
 
 Created by Nolaine Crusher on 6/30/20.
 */

import Foundation

/// A class representing a `ilst` atom in an `Mp4File`'s atom structure
///
/// The `ilst` atom is a sub-atom of `moov.udta.meta`
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
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)

        for child in self.children {
            data.append(child.encode)
        }
        return data
    }
    
    /// Initialize a `meta` atom for building a metadata list
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        try super.init(identifier: "ilst",
                       size: size,
                       children: children)
    }
}
