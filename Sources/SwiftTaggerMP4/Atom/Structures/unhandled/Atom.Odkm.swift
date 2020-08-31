//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `odkm` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Odkm: Atom {

    private var versionAndFlags: Data // 4

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)

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

        guard children.contains(where: {$0.identifier == "ohdr"}) else {
            throw Mp4File.Error.OhdrAtomNotFound
        } 
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }
}
