/*
  Udta.swift


  Created by Nolaine Crusher on 7/4/20.
*/

import Foundation

/// A class representing a `udta` atom in an `Mp4File`'s atom structure
class Udta: Atom {
    
    /// Initialize a `udta` atom upon parsing the `root` atom structure
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
    
    /// Initialize a `udta` atom from its array of child atoms
    init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        try super.init(identifier: "udta",
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
    
    /// Gets and sets the `meta` atom in `udta`
    var meta: Meta? {
        get {
            return children.first(where: { $0.identifier == "meta"}) as? Meta
        }
        set {
            if let newValue = newValue {
                var newChildren = children.filter({$0.identifier != "meta"})
                newChildren.append(newValue)
                self.children = newChildren
            } else {
                let newChildren = children.filter({$0.identifier != "meta"})
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets a nero `chpl` chapter atom
    var chpl: Chpl? {
        get {
            return children.first(where: { $0.identifier == "chpl"}) as? Chpl
        }
        set {
            if let newValue = newValue {
                var newChildren = children.filter({$0.identifier != "chpl"})
                newChildren.append(newValue)
                self.children = newChildren
            } else {
                let newChildren = children.filter({$0.identifier != "chpl"})
                self.children = newChildren
            }
        }
    }
}
