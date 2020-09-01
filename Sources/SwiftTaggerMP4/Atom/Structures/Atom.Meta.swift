/*
  Meta.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `meta` atom in an `Mp4File`'s atom structure
class Meta: Atom {
    
    private var versionAndFlags: Data
    var hdlr: Hdlr
    var ilst: Ilst
    
    /// Initialize a `meta` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.versionAndFlags = data.extractFirst(4)
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let hdlr = children.first(where: {$0.identifier == "hdlr"}) as? Hdlr {
            self.hdlr = hdlr
        } else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        
        if let ilst = children.first(where: {$0.identifier == "ilst"}) as? Ilst {
            self.ilst = ilst
        } else {
            throw Mp4File.Error.IlstAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload,
                       children: children)
        
        
    }
    
    /// Initialize a `meta` atom for building a metadata list
    init(children: [Atom]) throws {
        self.versionAndFlags = Atom.versionAndFlags
        var size: Int = 8
        for child in children {
            size += child.size
        }
        if let hdlr = children.first(where: {$0.identifier == "hdlr"}) as? Hdlr {
            self.hdlr = hdlr
        } else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        
        if let ilst = children.first(where: {$0.identifier == "ilst"}) as? Ilst {
            self.ilst = ilst
        } else {
            throw Mp4File.Error.IlstAtomNotFound
        }

        try super.init(identifier: "meta",
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
