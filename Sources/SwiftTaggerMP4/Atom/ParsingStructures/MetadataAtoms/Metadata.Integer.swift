/*
 IntegerMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
class IntegerMetadataAtom: Atom {
    var intValue: Int
    
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
            if dataAtom.dataType == .signedIntBE {
                switch identifier {
                    case "rtng", "cpil", "pcst", "stik", "pgap", "shwm":
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
            } else if  dataAtom.dataType == .signedInt64BE {
                self.intValue = data.extractToInt(8)
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
}
