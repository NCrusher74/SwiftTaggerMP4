//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/3/20.
//

import Foundation
class Trak: Atom {
    var trackID: Int
    var trackType: TrackType
    
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
        
        guard children.contains(where: {$0.identifier == "tkhd"}) else {
            throw Mp4File.Error.TkhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "mdia"}) else {
            throw Mp4File.Error.MdiaAtomNotFound
        }
        
        let mdia = children.first(where: {$0.identifier == "mdia"})!
        let hdlr = mdia.children.first(where: {$0.identifier == "hdlr"}) as! Hdlr
        self.trackType = hdlr.handlerSubtype
        
        let tkhd = children.first(where: {$0.identifier == "tkhd"}) as! Tkhd
        self.trackID = tkhd.trackID
        
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
        guard children.contains(where: {$0.identifier == "tkhd"}) else {
            throw Mp4File.Error.TkhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "mdia"}) else {
            throw Mp4File.Error.MdiaAtomNotFound
        }
        
        let mdia = children.first(where: {$0.identifier == "mdia"})!
        let hdlr = mdia.children.first(where: {$0.identifier == "hdlr"}) as! Hdlr
        self.trackType = hdlr.handlerSubtype
        
        let tkhd = children.first(where: {$0.identifier == "tkhd"}) as! Tkhd
        self.trackID = tkhd.trackID
        
        try super.init(identifier: "trak",
                       size: size,
                       children: children)
    }
}
