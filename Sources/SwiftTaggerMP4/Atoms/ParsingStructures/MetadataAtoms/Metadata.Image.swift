/*
 ImageMetadataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
import SwiftConvenienceExtensions

/// A metadata atom that stores an image for use as cover art
class ImageMetadataAtom: Atom {
    var image: NativeImage
    
    /// Initialize a `covr` atom by parsing from file content
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
                if let image = NativeImage(data: data) {
                    self.image = image
                } else {
                    throw MetadataAtomError.UnableToInitializeMetadataAtom("Image data cannot be converted to image")
                }
            } else if dataAtom.dataType == .reserved ||
                dataAtom.dataType == .undefined {
                let firstFourBytes = data[data.startIndex ..< data.startIndex + 4]
                let jpegMagicNumber: [UInt8] = [0xff, 0xd8, 0xff, 0xe0]
                let pngMagicNumber: [UInt8] = [0x89, 0x50, 0x4e, 0x47]
                guard firstFourBytes == Data(jpegMagicNumber ) ||
                    firstFourBytes == Data(pngMagicNumber) else {
                    throw MetadataAtomError.UnsupportedImageFormat
                }
                if let image = NativeImage(data: data) {
                    self.image = image
                } else {
                    throw MetadataAtomError.UnableToInitializeMetadataAtom("Image data cannot be converted to image")
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
    
    /// Initialize a `covr` atom from an image file stored locally
    init(imageLocation: URL) throws {
        #if os(iOS)
        if let image = NativeImage(contentsOfFile: imageLocation.path) {
            self.image = image
        } else {
            throw MetadataAtomError.UnableToSetCoverImage
        }
        #elseif os(macOS)
        if let image = NativeImage(contentsOf: imageLocation) {
            self.image = image
        } else {
            throw MetadataAtomError.UnableToSetCoverImage
        }
        #endif
        
        let dataAtom = try DataAtom(imageLocation: imageLocation)        
        let size = dataAtom.size + 8
        
        try super.init(identifier: "covr",
                       size: size,
                       children: [dataAtom])
    }    
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = children.map({$0.size}).sum()
        var data = Data()
        data.reserveCapacity(reserve)
        data.append(contentsOf: children.flatMap({$0.encode}))

        return data
    }
    
    var data: DataAtom {
        get {
            if let atom = self[.data] as? DataAtom {
                return atom
            } else {
                fatalError("Required child 'data' is missing from image metadata atom with identifier '\(self.identifier)'")
            }
        }
        set {
            self[.data] = newValue
        }
    }
}
