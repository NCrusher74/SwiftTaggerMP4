/*
 ImageMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
import Cocoa

class ImageMetadataAtom: Atom {
    var image: NSImage
    
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
                if let image = NSImage(data: data) {
                    self.image = image
                } else {
                    throw MetadataAtomError.UnableToInitializeMetadataAtom
                }
            } else if dataAtom.dataType == .reserved || dataAtom.dataType == .undefined {
                let firstFourBytes = data[data.startIndex ..< data.startIndex + 4]
                let jpegMagicNumber: [UInt8] = [0xff, 0xd8, 0xff, 0xe0]
                let pngMagicNumber: [UInt8] = [0x89, 0x50, 0x4e, 0x47]
                guard firstFourBytes == Data(jpegMagicNumber ) || firstFourBytes == Data(pngMagicNumber) else {
                    throw MetadataAtomError.UnsupportedImageFormat
                }
                if let image = NSImage(data: data) {
                    self.image = image
                } else {
                    throw MetadataAtomError.UnableToInitializeMetadataAtom
                }
            } else {
                throw MetadataAtomError.UnsupportedImageFormat
            }
        } else {
            throw MetadataAtomError.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    init(imageLocation: URL) throws {
        if let image = NSImage(contentsOf: imageLocation) {
            self.image = image
        } else {
            throw MetadataAtomError.UnableToSetCoverImage
        }
        let dataAtom = try DataAtom(imageLocation: imageLocation)
        
        let payload = dataAtom.encode()
        let size = payload.count + 8

        try super.init(identifier: "covr",
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
