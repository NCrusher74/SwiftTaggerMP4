/*
  Mdia.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `mdia` atom in an `Mp4File`'s atom structure
class Mdia: Atom {
    var mdhd: Mdhd
    var minf: Minf
    var hdlr: Hdlr
    
    /// Initialize a `mdia` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let mdhd = children.first(where: {$0.identifier == "mdhd"}) as? Mdhd {
            self.mdhd = mdhd
        } else {
            throw Mp4File.Error.MdhdAtomNotFound
        }

        if let hdlr = children.first(where: {$0.identifier == "hdlr"}) as? Hdlr {
            self.hdlr = hdlr
        } else {
            throw Mp4File.Error.HdlrAtomNotFound
        }

        if let minf = children.first(where: {$0.identifier == "minf"}) as? Minf {
            self.minf = minf
        } else {
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
        if let mdhd = children.first(where: {$0.identifier == "mdhd"}) as? Mdhd {
            self.mdhd = mdhd
        } else {
            throw Mp4File.Error.MdhdAtomNotFound
        }
        
        if let hdlr = children.first(where: {$0.identifier == "hdlr"}) as? Hdlr {
            self.hdlr = hdlr
        } else {
            throw Mp4File.Error.HdlrAtomNotFound
        }
        
        if let minf = children.first(where: {$0.identifier == "minf"}) as? Minf {
            self.minf = minf
        } else {
            throw Mp4File.Error.MinfAtomNotFound
        }

        try super.init(identifier: "mdia",
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

extension Mdia {
    /// Gets and sets an `elng` atom
    @available(OSX 10.12, *)
    var elng: Elng? {
        get {
            return children.first(where: { $0.identifier == "elng"}) as? Elng
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "elng"})
                newChildren.append(new)
                self.children = newChildren
                
                if let mdia = self.siblings?.first(where: {$0.identifier == "mdia"}) as? Mdia, mdia.hdlr.handlerSubtype == .soun {
                    mdhd.language = Mdhd.getLanguage(from: new)
                } else {
                    do {
                        mdhd = try Mdhd(elng: new)
                    } catch {
                        fatalError("Unable to initialize 'mdhd' atom for using 'elng' locale")
                    }
                }
            } else {
                let newChildren = children.filter({$0.identifier != "elng"})
                self.children = newChildren
            }
        }
    }
}