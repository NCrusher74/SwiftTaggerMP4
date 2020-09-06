/*
 Amr.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `amr` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Amr: Atom {
    
    var dataReferenceIndex: Int16
    var timeScale: Int16
    var damr: Damr
    
    override init(identifier: String, size: Int, payload: Data, children: [Atom]) throws {
        var data = payload
        // required, 6 bytes reserved
        _ = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirst(2).int16BE
        // required, 16 bytes reserved
        _ = data.extractFirst(16)
        self.timeScale = data.extractFirst(2).int16BE
        // required, 4 bytes reserved
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        if let damr = children.first(where: {$0.identifier == "damr"}) as? Damr {
            self.damr = damr
        } else {
            throw AmrError.DamrAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.dataReferenceIndex.beData)
        data.append(self.timeScale.beData)
        for child in children {
            data.append(child.encode())
        }
        return data
    }
    
    private enum AmrError: Error {
        /// Error thrown when a required atom is missing
        case DamrAtomNotFound
    }
}
