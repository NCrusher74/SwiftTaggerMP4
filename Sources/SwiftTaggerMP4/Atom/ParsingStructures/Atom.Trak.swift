/*
  Trak.swift


  Created by Nolaine Crusher on 8/3/20.
*/

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

extension Trak {
    /// Gets and sets a `edts` atom
    var edts: Edts? {
        get {
            if let edts = children.first(where: {$0.identifier == "edts"}) as? Edts {
                return edts
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                var newChildren = self.children.filter({$0.identifier != "edts"})
                newChildren.append(new)
                self.children = newChildren
            } else {
                let newChildren = children.filter({$0.identifier != "edts"})
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets the `tref` atom on the sound `trak`
    var tref: Tref? {
        get {
            let trackType = self.mdia.hdlr.handlerSubtype
            if trackType == .soun {
                return children.first(where: { $0.identifier == "tref"}) as? Tref
            } else {
                return nil
            }
        }
        set {
            let trackType = self.mdia.hdlr.handlerSubtype
            if trackType == .soun {
                if let new = newValue {
                    var newChildren = children.filter({$0.identifier != "tref"})
                    newChildren.append(new)
                    self.children = newChildren
                } else {
                    let newChildren = children.filter({$0.identifier != "tref"})
                    self.children = newChildren
                }
            }
        }
    }
}
