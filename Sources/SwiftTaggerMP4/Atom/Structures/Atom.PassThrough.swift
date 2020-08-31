//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/30/20.
//

import Foundation

/// A class representing atoms that are untouched in chaptering or metadata manipulation
class PassThrough: Atom {
    
    private var payload: Data
    /// Initialize an atom for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        self.payload = payload
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        return self.payload
    }
}

/// A class representing atoms that are untouched in chaptering or in metadata manipulation
class PassThroughWithChildren: Atom {
    
    /// Initialize an atom with children for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        
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
        for child in self.children {
            data.append(child.encode())
        }
        return data
    }    
}
