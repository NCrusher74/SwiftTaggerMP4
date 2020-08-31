//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation
import Cocoa

class ImageMetadataAtom: Atom {
    var image: NSImage?
    
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
            if dataAtom.dataType == .jpeg ||
                dataAtom.dataType == .png {
                self.image = NSImage(data: data)
            } else {
                throw Mp4File.Error.UnsupportedMetadataFormat
            }
        } else {
            throw Mp4File.Error.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    init(imageLocation: URL) throws {
        self.image = NSImage(contentsOf: imageLocation)
        
        let dataAtom = try DataAtom(imageLocation: imageLocation)
        
        let payload = dataAtom.encode()
        let size = payload.count + 8

        try super.init(identifier: "covr",
                       size: size,
                       children: [dataAtom])
    }
}
