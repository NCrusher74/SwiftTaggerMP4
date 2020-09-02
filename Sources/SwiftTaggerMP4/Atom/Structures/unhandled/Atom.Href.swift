/*
 Href.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `href` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Href: Atom {
    
    var dataReferenceIndex: Int16
    
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        _ = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirst(2).int16BE
        
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
        data.append(Atom.addReserveData(6))
        data.append(self.dataReferenceIndex.beData)
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
