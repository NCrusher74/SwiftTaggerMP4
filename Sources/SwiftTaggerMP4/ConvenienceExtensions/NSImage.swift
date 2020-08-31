//
//  NSImage.swift
//  
//
//  Created by Nolaine Crusher on 6/8/20.
//

import AppKit

extension NSImage {
    
    var pngData: Data {
        if let tiff = tiffRepresentation,
            let bitmap = NSBitmapImageRep(data: tiff),
            let data = bitmap.representation(using: .png, properties: [.compressionFactor: 1.0]) {
            return data
        } else {
            // Not sure if this situation can ever happen anyway.
            // If it does turn out to be possible, this should be turned into a thrown error instead.
            fatalError("Unable to convert image to PNG.")
        }
    }

    var jpgData: Data {
        if let tiff = tiffRepresentation,
            let bitmap = NSBitmapImageRep(data: tiff),
            let data = bitmap.representation(using: .jpeg, properties: [.compressionFactor: 1.0]) {
            return data
        } else {
            // Not sure if this situation can ever happen anyway.
            // If it does turn out to be possible, this should be turned into a thrown error instead.
            fatalError("Unable to convert image to JPG.")
        }
    }
}
