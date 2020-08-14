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
    
    public func read() throws -> Tag {
        return try Tag(from: self)
    }
    
    public func write(tag: Tag, outputLocation: URL) throws {
        let parser = tag.parser
        // how to get the metadata from `tag` to parser?
        try parser.write(outputLocation: outputLocation)
    }
}
