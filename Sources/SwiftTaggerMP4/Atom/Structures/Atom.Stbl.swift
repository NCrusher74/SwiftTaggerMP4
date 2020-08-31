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
    
    var stsd: Stsd
    var stsc: Stsc
    var stts: Stts
    var stsz: Stsz
    var stco: Stco?
    var co64: Co64?
    
    /// Initialize a `stbl` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let stsd = children.first(where: {$0.identifier == "stsd"}) as? Stsd {
            self.stsd = stsd
        } else {
            throw Mp4File.Error.StsdAtomNotFound
        }

        if let stsc = children.first(where: {$0.identifier == "stsc"}) as? Stsc{
            self.stsc = stsc
        } else {
            throw Mp4File.Error.StscAtomNotFound
        }

        if let stts = children.first(where: {$0.identifier == "stts"}) as? Stts {
            self.stts = stts
        } else {
            throw Mp4File.Error.SttsAtomNotFound
        }

        if let stsz = children.first(where: {$0.identifier == "stsz"}) as? Stsz {
            self.stsz = stsz
        } else {
            throw Mp4File.Error.StszAtomNotFound
        }

        if let co64 = children.first(where: {$0.identifier == "co64"}) as? Co64 {
            self.co64 = co64
        } else if let stco = children.first(where: {$0.identifier == "stco"}) as? Stco {
            self.stco = stco
        } else {
            throw Mp4File.Error.ChunkOffsetAtomNotFound
        }

        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize an `stbl` atom from its children
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        if let stsd = children.first(where: {$0.identifier == "stsd"}) as? Stsd {
            self.stsd = stsd
        } else {
            throw Mp4File.Error.StsdAtomNotFound
        }
        
        if let stsc = children.first(where: {$0.identifier == "stsc"}) as? Stsc{
            self.stsc = stsc
        } else {
            throw Mp4File.Error.StscAtomNotFound
        }
        
        if let stts = children.first(where: {$0.identifier == "stts"}) as? Stts {
            self.stts = stts
        } else {
            throw Mp4File.Error.SttsAtomNotFound
        }
        
        if let stsz = children.first(where: {$0.identifier == "stsz"}) as? Stsz {
            self.stsz = stsz
        } else {
            throw Mp4File.Error.StszAtomNotFound
        }
        
        if let co64 = children.first(where: {$0.identifier == "co64"}) as? Co64 {
            self.co64 = co64
        } else if let stco = children.first(where: {$0.identifier == "stco"}) as? Stco {
            self.stco = stco
        } else {
            throw Mp4File.Error.ChunkOffsetAtomNotFound
        }

        try super.init(identifier: "stbl",
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
