//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation

class UnknownMetadataAtom: Atom {
    var name: String
    var stringValue: String
    var mean: Mean
    var nameAtom: Name
    var dataAtom: DataAtom
    
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
        if let mean = children.first(where: {$0.identifier == "mean"}) as? Mean {
            self.mean = mean
        } else {
            throw MetadataAtomError.MeanAtomNotFound
        }
        
        if let nameAtom = children.first(where: {$0.identifier == "name"}) as? Name {
            self.nameAtom = nameAtom
            self.name = nameAtom.stringValue
        } else {
            throw MetadataAtomError.NameAtomNotFound
        }
        
        if let dataAtom = children.first(where: {$0.identifier == "data"}) as? DataAtom {
            self.dataAtom = dataAtom
            if dataAtom.dataType == .utf8 ||
                dataAtom.dataType == .utf8Sort ||
                dataAtom.dataType == .uuid ||
                dataAtom.dataType == .isrc ||
                dataAtom.dataType == .url ||
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
    
    
    init(name: String, stringValue: String) throws {
        let mean = try Mean()
        self.mean = mean
        let nameAtom = try Name(atomName: name)
        self.nameAtom = nameAtom
        self.name = name
        let dataAtom = try DataAtom(stringValue: stringValue)
        self.dataAtom = dataAtom
        self.stringValue = stringValue
        
        var payload = Data()
        payload.append(mean.encode())
        payload.append(nameAtom.encode())
        payload.append(dataAtom.encode())
        
        let size = payload.count + 8
        try super.init(identifier: "----",
                       size: size,
                       children: [mean, nameAtom, dataAtom])
    }
}
