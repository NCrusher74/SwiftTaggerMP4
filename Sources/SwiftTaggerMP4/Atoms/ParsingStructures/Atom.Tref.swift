/*
  Tref.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `tref` atom in an `Mp4File`'s atom structure
class Tref: Atom {
    /// Initialize a `tref` atom for parsing from the root structure
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
    
    /// Initialize a `tref` atom on the sound track to create a chapter track reference
    init(chapterTrackID: Int) throws {
        let child = try TrefSubatom(chapterTrackID: chapterTrackID)
        
        try super.init(identifier: "tref",
                       size: child.size + 8,
                       children: [child])
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
    
    /// Gets and sets the `chap` child atom
    var chap: TrefSubatom? {
        get {
            self.children.first(where: {$0.identifier == "chap"}) as? TrefSubatom
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "chap"})
                newChildren.append(new)
                children = newChildren
            } else {
                let newChildren = children.filter({$0.identifier != "chap"})
                children = newChildren
            }
        }
    }
}
