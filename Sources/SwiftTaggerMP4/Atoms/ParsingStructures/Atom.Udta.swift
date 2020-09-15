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
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
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
            self[.meta] as? Meta
        }
        set {
            self[.meta] = newValue
        }
    }

    /// Gets and sets a nero `chpl` chapter atom
    var chpl: Chpl? {
        get {
            self[.chpl] as? Chpl
        }
        set {
            self[.chpl] = newValue
        }
    }
}
