/*
 Pinf.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `pinf` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Pinf: Atom {
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

        guard children.contains(where: {$0.identifier == "frma"}) else {
            throw Mp4File.Error.FrmaAtomNotFound
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
