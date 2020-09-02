/*
  Atom.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
import SwiftConvenienceExtensions

class Atom {
    /// The atom's unique four byte identifier
    var identifier: String
    /// The byte count of the whole atom, including header data
    var size: Int
    /// The atoms sub-atom content
    private var _children: [Atom]
    var children: [Atom] {
        get {
            return _children
        }
        set {
            _children = newValue
            for child in children {
                child.parent = self
            }
        }
    }

    weak var parent: Atom?
    /// the other atoms descended from the same parent atom
    var siblings: [Atom]? {
        get {
            return parent?.children
        }
        set {
            if let newValue = newValue {
                parent?.children = newValue
            }
        }
    }
    
    /// Initialize an atom with properties but without children
    /// - Parameters:
    ///   - identifier: the four character code of the atom
    ///   - size: the byte-count of the atom
    ///   - payload: content data of the atom to be parsed
    init(identifier: String, size: Int, payload: Data) throws {
        self.identifier = identifier
        self.size = size
        self._children = []
    }
    
    /// Initialize an atom with children
    /// - Parameters:
    ///   - identifier: the four character code of the atom
    ///   - size: the byte-count of the atom
    ///   - _children: the array of child atoms
    init(identifier: String, size: Int, children: [Atom]) throws {
        self.identifier = identifier
        self.size = size
        self._children = children
        for child in _children {
            child.parent = self
        }
    }
    
    /// Initialize an atom with both properties and child atoms
    /// - Parameters:
    ///   - identifier: the four character code of the atom
    ///   - size: the byte-count of the atom
    ///   - payload: content data of the atom to be parsed
    ///   - children: the array of child atoms
    init(identifier: String, size: Int,
         payload: Data, children: [Atom]) throws {
        self.identifier = identifier
        self.size = size
        self._children = children
        for child in _children {
            child.parent = self
        }
    }
    
    /// The atom's subatoms or properties as data
    var contentData: Data {
        fatalError("Override contentData in subclass: \(type(of: self)).")
    }

    func encode() -> Data {
        var data = Data()
        
        let preliminarySize = self.contentData.count + 8
        
        var size = preliminarySize
        if preliminarySize > UInt32.max {
            size = 1 // use extended size UInt64 instead
        }
        data.append(size.int32.beData)
        data.append(self.identifier.encodedISOLatin1)
        
        if preliminarySize > UInt32.max {
            let extendedSize = preliminarySize.int64.beData
            data.append(extendedSize)
        }
        
        data.append(self.contentData)
        return data
    }
    
    static var version: Data = UInt8(0x00).beData
    static var flags: Data {
        return Data(repeating: 0x00, count: 3)
    }
    
    static func addReserveData(_ k: Int) -> Data {
        return Data(repeating: 0x00, count: k)
    }
}
