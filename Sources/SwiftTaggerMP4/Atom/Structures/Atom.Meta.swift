//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `meta` atom in an `Mp4File`'s atom structure
class Meta: Atom {
    
    private var versionAndFlags: Data // 4
    
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
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload,
                       children: children)
        
        
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "ilst"}) else {
            throw Mp4File.Error.IlstAtomNotFound
        }
    }
    
    /// Initialize a `meta` atom for building a metadata list
    init(children: [Atom]) throws {
        self.versionAndFlags = Data(repeating: 0x00, count: 4)
        var size: Int = 8
        for child in children {
            size += child.size
        }
        try super.init(identifier: "meta",
                       size: size,
                       children: children)
        
        guard children.contains(where: {$0.identifier == "hdlr"}) else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "ilst"}) else {
            throw Mp4File.Error.IlstAtomNotFound
        }
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
    
    var hdlr: Hdlr {
        get {
            return children.first(where: { $0.identifier == "hdlr"}) as! Hdlr
        }
        set {
            var newChildren = children.filter({$0.identifier != "hdlr"})
            newValue.parent = self
            newChildren.append(newValue)
            self.children = newChildren
        }
    }
    
    var ilst: Ilst {
        get {
            return children.first(where: { $0.identifier == "ilst"}) as! Ilst
        }
        set {
            var newChildren = children.filter({$0.identifier != "ilst"})
            newValue.parent = self
            newChildren.append(newValue)
            self.children = newChildren
        }
    }
}
