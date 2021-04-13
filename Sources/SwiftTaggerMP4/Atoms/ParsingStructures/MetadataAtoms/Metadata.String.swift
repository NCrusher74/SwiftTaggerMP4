/*
 StringMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing the metadata atoms in an `Mp4File`'s atom structure
class StringMetadataAtom: Atom {
    /// The content of a string metadata atom
    var stringValue: String
    
    /// Initialize a metadata atom with string content by parsing from file contents
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
            if dataAtom.dataType == .utf8 ||
                dataAtom.dataType == .utf8Sort ||
                dataAtom.dataType == .uuid ||
                dataAtom.dataType == .isrc ||
                dataAtom.dataType == .url ||
                dataAtom.dataType == .genres ||
                dataAtom.dataType == .reserved {
                self.stringValue = dataAtom.data.stringUtf8 ?? ""
            } else if dataAtom.dataType == .utf16 || dataAtom.dataType == .utf16Sort {
                self.stringValue = String(data: dataAtom.data, encoding: .utf16) ?? ""
            } else if dataAtom.dataType == .signedInt8 {
                let int = dataAtom.data.uInt8BE.int
                self.stringValue = String(int)
            } else if dataAtom.dataType == .signedInt16BE {
                let int = dataAtom.data.uInt16BE.int
                self.stringValue = String(int)
            } else if dataAtom.dataType == .signedInt32BE {
                let int = dataAtom.data.uInt32BE.int
                self.stringValue = String(int)
            } else if dataAtom.dataType == .signedInt64BE {
                let int = dataAtom.data.uInt64BE.int
                self.stringValue = String(int)
            } else if dataAtom.dataType == .signedIntBE {
                let int = dataAtom.data.extractToInt(data.count)
                self.stringValue = String(int)
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
    
    /// Initialize a metadata atom with string content for building a metadata list
    init(identifier: StringMetadataIdentifier,
         stringValue: String) throws {
        self.stringValue = stringValue
        let dataAtom = try DataAtom(stringValue: stringValue)
        if identifier == .podcastUrl {
            dataAtom.dataType = .reserved
        }
        let payload = dataAtom.encode
        let size = payload.count + 8
        try super.init(identifier: identifier.rawValue,
                       size: size,
                       children: [dataAtom])
    }    

   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode)
        }
        return data
    }
    
    var data: DataAtom {
        get {
            if let atom = self[.data] as? DataAtom {
                return atom
            } else {
                fatalError("Required child 'data' is missing from string metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.data] = newValue
        }
    }
}
