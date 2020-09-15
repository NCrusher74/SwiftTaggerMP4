/*
 Mp4s.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `mp4s` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Mp4s: Atom {

    var dataReferenceIndex: Int16
    var esds: PassThrough
    
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
        if let esds = children.first(where: {$0.identifier == "esds"}) as? PassThrough {
            self.esds = esds
        } else {
            throw SoundAtomError.EsdsAtomNotFound
        }
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload,
                   children: children)

    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
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
