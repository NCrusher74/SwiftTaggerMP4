/*
 Atom.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation
import SwiftConvenienceExtensions

public class Atom: CustomStringConvertible {
    /// The atom's unique four byte identifier
    public var identifier: String

    var key: AtomKey? {
        if StringMetadataIdentifier(rawValue: identifier) != nil {
            return AtomKey(idString: identifier)
        } else if IntegerMetadataIdentifier(rawValue: identifier) != nil {
            return AtomKey(idString: identifier)
        } else if identifier == "trkn" || identifier == "disk" || identifier == "covr" || identifier == "----" {
            return AtomKey(idString: identifier)
        } else {
            return nil
        }
    }

    public var description: String {
        if key != nil {
            fatalError("Override from metadata atom \(identifier)")
        } else {
            return identifier
        }
    }
    
    /// The byte count of the whole atom, including header data
    var size: Int

    /// The atoms sub-atom content
    private var _children: [Atom] {
        didSet {
            recalculateSize()
        }
    }

    /// The atoms sub-atom content
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
    
    /// An atom from which the atom is directly descended
    weak var parent: Atom?
    /// Other atoms descended from the same parent atom
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

    /// Initialize an atom with properties but without children
    /// - Parameters:
    ///   - identifier: the four character code of the atom
    ///   - size: the byte-count of the atom
    init(identifier: String, size: Int) throws {
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
    
    /// Converts an atom to data for writing to file
    var encode: Data {
        var data = Data()
        
        let preliminarySize = self.contentData.count + 8        
        var size = preliminarySize
        if preliminarySize > UInt32.max {
            size = 1 // use extended size UInt64 instead
        }
        data.append(size.uInt32.beData)
        data.append(self.identifier.encodedISOLatin1)
        
        if preliminarySize > UInt32.max {
            let extendedSize = preliminarySize.uInt64.beData
            data.append(extendedSize)
        }
        
        data.append(self.contentData)
        
        return data
    }
    
    /// Calculate the size of a parent atom from the size of the child atoms it contains.
    ///
    /// Only to be used with atoms that contain ONLY their child atoms.
    ///
    /// If the atom has a payload separate from it's children, this won't work.
    func recalculateSize() {
        self.size = self.children.map({$0.size}).sum() + 8
    }
    
    /// Default version value
    static var version: Data = UInt8(0x00).beData

    /// Default flags value
    static var flags: Data {
        return Data(repeating: 0x00, count: 3)
    }
    
    /// The 36-byte matrix structure used in `mvhd` and `tkhd` atoms
    var matrixStructure: Data =
        Data([ 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
               0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
               0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
               0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
               0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
               0x00, 0x00, 0x40, 0x00, 0x00, 0x00 ])

    var creationTime = Date().dateIntervalSince1904
    var modificationTime = Date().dateIntervalSince1904

    /// Returns *k* bytes of null data for use in atoms with required reserve space
    static func addReserveData(_ k: Int) -> Data {
        return Data(repeating: 0x00, count: k)
    }
    
    /// Gets and sets a sub atom with an identifier string matching `AtomIdentifier.rawValue`
    subscript(_ identifier: AtomIdentifier) -> Atom? {
        get {
            if let atom = children.first(where: {$0.identifier == identifier.rawValue}) {
                return atom
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                var newChildren = self.children.filter({$0.identifier != identifier.rawValue})
                newChildren.append(new)
                self.children = newChildren
            } else {
                let newChildren = self.children.filter({$0.identifier != identifier.rawValue})
                self.children = newChildren
            }
        }
    }
}
