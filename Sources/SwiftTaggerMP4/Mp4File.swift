//
//  Mp4File.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import SwiftMp4MetadataParser

@available(OSX 10.13, *)
public struct Mp4File {
    
    public let location: URL
    
    public init(location: URL) throws {
        let validExtensions = ["mp4", "m4a", "m4b", "aac", "m4r", "m4p", "aax"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
            self.location = location
        } else {
            throw Mp4File.Error.InvalidFileFormat
        }
    }
    
    public mutating func write(tag: Tag, outputLocation: URL) throws {
        let parser = try SwiftMp4MetadataParser.Mp4File(location: self.location)
        try parser.write(outputLocation: outputLocation)
    }
}
