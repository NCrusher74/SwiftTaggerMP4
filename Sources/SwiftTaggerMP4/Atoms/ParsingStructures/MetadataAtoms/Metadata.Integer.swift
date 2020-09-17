/*
 IntegerMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
/// A metadata atom with integer content
class IntegerMetadataAtom: Atom {
    /// The content of an integer metadata atom
    var intValue: Int
    
    /// Initialize a metadata atom with integer content by parsing from file contents
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
        
        if let dataAtom = children.first(where: {$0.identifier == "data"}) as? DataAtom {
            var data = dataAtom.data
            
            // some apps require the integer to be a specific width for particular atoms, so we will determine the width by atom identifier
            if dataAtom.dataType == .signedIntBE {
                switch identifier {
                    case "rtng", "cpil", "pcst", "stik", "pgap", "shwm", "akID":
                        self.intValue = data.extractToInt(1)
                    case "tmpo", "\u{00A9}mvi", "\u{00A9}mvc":
                        self.intValue = data.extractToInt(2)
                    case "plID":
                        self.intValue = data.extractToInt(8)
                    default:
                        self.intValue = data.extractToInt(4)
                }
            } else if dataAtom.dataType == .signedInt8 {
                self.intValue = data.extractToInt(1)
            } else if dataAtom.dataType == .signedInt16BE {
                self.intValue = data.extractToInt(2)
            } else if dataAtom.dataType == .signedInt32BE {
                self.intValue = data.extractToInt(4)
            } else if dataAtom.dataType == .signedInt64BE {
                self.intValue = data.extractToInt(8)
            } else if dataAtom.dataType == .utf8 ||
                dataAtom.dataType == .utf8Sort ||
                dataAtom.dataType == .uuid ||
                dataAtom.dataType == .isrc ||
                dataAtom.dataType == .url ||
                dataAtom.dataType == .genres ||
                dataAtom.dataType == .reserved {
                if let string = data.stringUtf8 {
                    if let int = Int(string) {
                        self.intValue = int
                    } else {
                        throw MetadataAtomError.UnableToConvertStringContentToInteger("Atom identifier: '\(identifier)'")
                    }
                } else {
                    throw MetadataAtomError.UnableToParseDataToString("Atom identifier: '\(identifier)'")
                }
            } else {
                throw MetadataAtomError.UnsupportedMetadataFormat("UnsupportedMetadataAtomError on atom with identifier \(identifier)")
            }
        } else {
            throw MetadataAtomError.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a metadata atom with integer content for building a metadata list
    init(identifier: IntegerMetadataIdentifier, intValue: Int) throws {
        self.intValue = intValue
        
        let dataAtom = try DataAtom(
            identifier: identifier.rawValue,
            intValue: intValue)
        
        let payload = dataAtom.encode()
        let size = payload.count + 8
        
        try super.init(identifier: identifier.rawValue,
                       size: size,
                       children: [dataAtom])
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
    
    var data: DataAtom {
        get {
            if let atom = self[.data] as? DataAtom {
                return atom
            } else {
                fatalError("Required child 'data' is missing from integer metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.data] = newValue
        }
    }
}
