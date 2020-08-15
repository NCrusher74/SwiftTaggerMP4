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
/// A type representing an audio file stored locally
public struct Mp4File {
    
    public let location: URL
    
    /// Initialize an Mp4File from a local file
    /// - Parameter location: the `url` of the mp4 file
    /// - Throws: `InvalidFileFormat` if the file is not a valid mp4 file
    public init(location: URL) throws {
        let validExtensions = ["mp4", "m4a", "m4b", "aac", "m4r", "m4p", "aax"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
            self.location = location
        } else {
            throw Mp4File.Error.InvalidFileFormat
        }
    }
    
    /// Reads the metadata from an mp4 file
    /// - Throws: Caller decides how to handle errors
    /// - Returns: `Tag`: the metadata of the file as `[(identifier, value)]`
    public func read() throws -> Tag {
        return try Tag(from: self)
    }
    
    /// Writes a new mp4 file with edited metadata and chapters
    /// - Parameters:
    ///   - tag: the `Tag` instance containing the desired metadata
    ///   - outputLocation: the url for the output fil
    /// - Throws: caller decides how errors are handled
    public func write(tag: Tag, outputLocation: URL) throws {
        let parser = tag.parser
        // how to get the metadata from `tag` to parser?
        try parser.write(outputLocation: outputLocation)
    }
}
