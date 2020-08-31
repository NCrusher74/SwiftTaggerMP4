//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation
class PartAndTotalMetadataAtom: Atom {
    var part: Int?
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
                self.part = partData.toInt16
                
                let totalIn = partOut
                let totalOut = totalIn + 2
                let totalRange = totalIn ..< totalOut
                let totalData = data.subdata(in: totalRange)
                self.total = totalData.toInt16
                
            } else if data.count >= 4 && data.count < 6 {
                let partIn = data.startIndex + 2
                let partOut = partIn + 2
                let partRange = partIn ..< partOut
                let partData = data.subdata(in: partRange)
                self.part = partData.toInt16
                self.total = nil
            } else {
                self.part = nil
                self.total = nil
            }
        } else {
            throw Mp4File.Error.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    init(identifier: String, part: Int, total: Int?) throws {
        self.part = part
        self.total = total
        var data = Data(repeating: 0x00, count: 2)
        data.append(part.beData(16))
        if let totalData = total?.beData(16) {
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
}
