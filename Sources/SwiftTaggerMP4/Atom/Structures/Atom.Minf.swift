//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `minf` atom in an `Mp4File`'s atom structure
class Minf: Atom {
    /// Initialize a `minf` atom for parsing from the root structure
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
        
        guard children.contains(where: {$0.identifier == "nmhd"}) ||
            children.contains(where: {$0.identifier == "gmhd"}) ||
            children.contains(where: {$0.identifier == "smhd"}) ||
            children.contains(where: {$0.identifier == "vmhd"}) else {
                throw Mp4File.Error.MediaInformationHeaderAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "dinf"}) else {
            throw Mp4File.Error.DinfAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stbl"}) else {
            throw Mp4File.Error.DinfAtomNotFound
        }
    }
    
    /// Initialize a `minf` atom from its children
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        try super.init(identifier: "minf",
                       size: size,
                       children: children)
        guard children.contains(where: {$0.identifier == "nmhd"}) ||
            children.contains(where: {$0.identifier == "gmhd"}) ||
            children.contains(where: {$0.identifier == "smhd"}) ||
            children.contains(where: {$0.identifier == "vmhd"}) else {
                throw Mp4File.Error.MediaInformationHeaderAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "dinf"}) else {
            throw Mp4File.Error.DinfAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "stbl"}) else {
            throw Mp4File.Error.DinfAtomNotFound
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
