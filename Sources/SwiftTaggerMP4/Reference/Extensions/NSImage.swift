//
//  NSImage.swift
//  
//
//  Created by Nolaine Crusher on 6/8/20.
//

import AppKit

extension NSImage {
    
    var data: Data {
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
    
    func save(directory: URL, fileName: String) throws -> URL {
        let url = directory.appendingPathComponent(fileName).appendingPathExtension("png")
        try data.write(to: url)
        return url
    }
}
