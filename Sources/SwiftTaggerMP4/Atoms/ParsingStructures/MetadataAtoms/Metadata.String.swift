/*
 StringMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
import Cocoa

/// A class representing the metadata atoms in an `Mp4File`'s atom structure
class StringMetadataAtom: Atom {
    var dataAtom: DataAtom
    var stringValue: String
    
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
            self.dataAtom = dataAtom
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
            } else {
                throw MetadataAtomError.UnsupportedMetadataFormat
            }
        } else {
            throw MetadataAtomError.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    init(identifier: StringMetadataIdentifier,
         stringValue: String) throws {
        self.stringValue = stringValue
        let dataAtom = try DataAtom(stringValue: stringValue)
        if identifier == .podcastUrl {
            dataAtom.dataType = .reserved
        }
        self.dataAtom = dataAtom
        let payload = dataAtom.encode()
        let size = payload.count + 8
        try super.init(identifier: identifier.rawValue,
                       size: size,
                       children: [dataAtom])
    }    

    override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
}
