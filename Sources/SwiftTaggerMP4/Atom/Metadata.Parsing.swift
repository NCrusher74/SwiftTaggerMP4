//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension StringMetadataIdentifier {
    func parse(size: Int, payload: Data) throws -> Atom {
        return try StringMetadataAtom(identifier: self.rawValue,
                                      size: size,
                                      payload: payload)
    }
}

extension IntegerMetadataIdentifier {
    func parse(size: Int, payload: Data) throws -> Atom {
        return try IntegerMetadataAtom(identifier: self.rawValue,
                                       size: size,
                                       payload: payload)
    }
}
