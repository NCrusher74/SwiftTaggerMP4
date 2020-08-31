//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `href` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Href: Atom {
    
    private var reserved1: Data // 6 bytes
    var dataReferenceIndex: Int // 2
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.reserved1 = data.extractFirst(6) // 14
        self.dataReferenceIndex = data.extractTo16BitInt() // 16
        
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
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.reserved1)
        data.append(self.dataReferenceIndex.beDataFrom16BitInt)
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
