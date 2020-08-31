//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/3/20.
//

import Foundation
class Trak: Atom {
    var tkhd: Tkhd
    var mdia: Mdia
    
    /// Initialize an `trak` atom for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let tkhd = children.first(where: {$0.identifier == "tkhd"}) as? Tkhd {
            self.tkhd = tkhd
        } else {
            throw Mp4File.Error.TkhdAtomNotFound
        }

        if let mdia = children.first(where: {$0.identifier == "mdia"}) as? Mdia {
            self.mdia = mdia
        } else {
            throw Mp4File.Error.MdiaAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            let childData = child.encode()
            data.append(childData)
        }
        return data
    }
    
    /// Initialize a `trak` atom from its children
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        if let tkhd = children.first(where: {$0.identifier == "tkhd"}) as? Tkhd {
            self.tkhd = tkhd
        } else {
            throw Mp4File.Error.TkhdAtomNotFound
        }
        
        if let mdia = children.first(where: {$0.identifier == "mdia"}) as? Mdia {
            self.mdia = mdia
        } else {
            throw Mp4File.Error.MdiaAtomNotFound
        }

        try super.init(identifier: "trak",
                       size: size,
                       children: children)
    }
}
