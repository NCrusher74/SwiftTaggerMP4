/*
 StringMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
import Cocoa

/// A class representing the metadata atoms in an `Mp4File`'s atom structure
class StringMetadataAtom: Atom {
    var mean: Mean?
    var name: Name?
    var stringValue: String?
    
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
                dataAtom.dataType == .url {
                self.stringValue = dataAtom.data.stringUtf8
            } else if dataAtom.dataType == .utf16 || dataAtom.dataType == .utf16Sort {
                self.stringValue = String(data: dataAtom.data, encoding: .utf16)
            }
        } else {
            throw Mp4File.Error.DataAtomNotFound
        }
        
        if StringMetadataIdentifier(rawValue: identifier) == nil {
            if let mean = children.first(where: {$0.identifier == "mean"}) as? Mean {
                self.mean = mean
            } else {
                throw Mp4File.Error.MeanAtomNotFound
            }
            if let name = children.first (where: {$0.identifier == "name"}) as? Name {
                self.name = name
            } else {
                throw Mp4File.Error.NameAtomNotFound
            }
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    init(identifier: StringMetadataIdentifier,
         stringValue: String) throws {
        let dataAtom = try DataAtom(stringValue: stringValue)
        let payload = dataAtom.encode()
        let size = payload.count + 8
        try super.init(identifier: identifier.rawValue,
                       size: size,
                       children: [dataAtom])
    }
    
    init(name: String, stringValue: String) throws {
        let mean = try Mean()
        let name = try Name(atomName: name)
        let dataAtom = try DataAtom(stringValue: stringValue)
        
        var payload = Data()
        payload.append(mean.encode())
        payload.append(name.encode())
        payload.append(dataAtom.encode())
        
        let size = payload.count + 8
        try super.init(identifier: "----",
                       size: size,
                       children: [mean, name, dataAtom])
    }
}
