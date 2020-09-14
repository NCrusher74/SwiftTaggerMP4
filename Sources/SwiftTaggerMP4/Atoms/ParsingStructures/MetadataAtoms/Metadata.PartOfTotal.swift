/*
 PartAndTotalMetadata.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
class PartAndTotalMetadataAtom: Atom {
    var part: Int
    var total: Int?
    
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
            let data = dataAtom.data
            if data.count >= 6 {
                let partIn = data.startIndex + 2
                let partOut = partIn + 2
                let partRange = partIn ..< partOut
                let partData = data.subdata(in: partRange)
                self.part = partData.int16BE.toInt
                
                let totalIn = partOut
                let totalOut = totalIn + 2
                let totalRange = totalIn ..< totalOut
                let totalData = data.subdata(in: totalRange)
                self.total = totalData.int16BE.toInt
                
            } else if data.count >= 4 && data.count < 6 {
                let partIn = data.startIndex + 2
                let partOut = partIn + 2
                let partRange = partIn ..< partOut
                let partData = data.subdata(in: partRange)
                self.part = partData.int16BE.toInt
                self.total = nil
            } else {
                self.part = 0
                self.total = nil
            }
        } else {
            throw MetadataAtomError.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    init(identifier: String, part: Int, total: Int?) throws {
        self.part = part
        self.total = total
        var data = Data(repeating: 0x00, count: 2)
        data.append(part.int16.beData)
        if let totalData = total?.int16.beData {
            data.append(totalData)
        }
        if identifier == "trkn" {
            data.append(Data(repeating: 0x00, count: 2))
        }
        let dataAtom = try DataAtom(data: data)
        
        let payload = dataAtom.encode()
        let size = payload.count + 8
        
        try super.init(identifier: identifier,
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
    
    var data: DataAtom {
        get {
            if let atom = self[.data] as? DataAtom {
                return atom
            } else {
                fatalError("Required child 'data' is missing from partOfTotal metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.data] = newValue
        }
    }
}