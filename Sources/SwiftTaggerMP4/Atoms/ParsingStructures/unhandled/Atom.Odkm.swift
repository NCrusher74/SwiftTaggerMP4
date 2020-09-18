/*
 Odkm.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `odkm` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Odkm: Atom {

    private var version: Data
    private var flags: Data
    var ohdr: Ohdr

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }
        
        if let ohdr = children.first(where: {$0.identifier == "ohdr"}) as? Ohdr {
            self.ohdr = ohdr
        } else {
            throw OdkmError.OhdrAtomNotFound
        }
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload,
                   children: children)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        for child in self.children {
            data.append(child.encode)
        }
        return data
    }
    
    private enum OdkmError: Error {
        /// Error thrown when a required atom is missing
        case OhdrAtomNotFound
    }
}
