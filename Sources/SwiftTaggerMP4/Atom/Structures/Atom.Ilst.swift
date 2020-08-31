//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing a `ilst` atom in an `Mp4File`'s atom structure
class Ilst: Atom {
    /// Initialize a `ilst` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
//        // prevent duplicate unknown atoms
//        let culledChildren = Ilst.cullDuplicateUnknowns(children: children)
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
    
//    /// Initialize a `ilst` atom for building a metadata track
//    init(children: [Atom]) throws {
//
//        let culledChildren = Ilst.cullDuplicateUnknowns(children: children)
//        var size: Int = 8
//        for child in culledChildren {
//            size += child.size
//        }
//        try super.init(identifier: "ilst",
//                       size: size,
//                       children: culledChildren)
//    }
    
//    /// Eliminate `unknown` metadata atoms with the same name
//    private static func cullDuplicateUnknowns(children: [Atom]) -> [Atom] {
//        // filter out any duplicates
//        var knownChildren = children.filter({$0.identifier != "----"})
//        let unknownChildren = children.filter({$0.identifier == "----"}) as! [StringMetadataAtom]
//        
//        var unknownChildrenDict = [String: Atom]()
//        for child in unknownChildren {
//            unknownChildrenDict[child.name] = child
//        }
//        
//        var culledChildren = [Atom]()
//        for child in unknownChildrenDict {
//            culledChildren.append(child.value)
//        }
//        knownChildren.append(contentsOf: culledChildren)
//        return knownChildren
//    }
}
