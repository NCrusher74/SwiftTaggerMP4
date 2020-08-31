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
        
        // jpg [0xff, 0xd8, 0xff, 0xe0]
        // png [0x89, 0x50, 0x4e, 0x47]
        if let dataAtom = children.first(where: {$0.identifier == "data"}) as? DataAtom {
            let data = dataAtom.data
            if dataAtom.dataType == .jpeg ||
                dataAtom.dataType == .png {
                self.image = NSImage(data: data)
            } else if dataAtom.dataType == .reserved || dataAtom.dataType == .undefined {
                let firstFourBytes = data[data.startIndex ..< data.startIndex + 4]
                let jpegMagicNumber: [UInt8] = [0xff, 0xd8, 0xff, 0xe0]
                let pngMagicNumber: [UInt8] = [0x89, 0x50, 0x4e, 0x47]
                guard firstFourBytes == Data(jpegMagicNumber ) || firstFourBytes == Data(pngMagicNumber) else {
                    throw Mp4File.Error.UnsupportedImageFormat
                }
                self.image = NSImage(data: data)
            } else {
                throw Mp4File.Error.UnsupportedImageFormat
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
