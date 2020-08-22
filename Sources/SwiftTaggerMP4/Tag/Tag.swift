//
//  Tag.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 5/2/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import SwiftMp4MetadataParser
import Cocoa

@available(OSX 10.13, *)
/// A structure containing the metadata accessors for an mp4 file
public struct Tag {
    public var metadata: [(identifier: AtomIdentifier, value: Any)]
    internal var parser: SwiftMp4MetadataParser.Mp4File
    internal var credits: Credits
    
    /// Initializes a `Tag` instance containing the metadata and chapter data accessors of an mp4 file
    /// - Parameter file: The mp4 file being parsed
    /// - Throws: caller will decide how errors are handled
    public init(from file: Mp4File) throws {
        let parser = try SwiftMp4MetadataParser.Mp4File(location: file.location)
        self.parser = parser
        self.credits = try Credits(parser: parser)
        let tags = try parser.listMetadataTags()
        var entries = [(AtomIdentifier, Any)]()
        for tag in tags {
            if let identifier = AtomIdentifier(rawValue: tag.identifier) {
                let entry = (identifier, tag.value)
                entries.append(entry)
            }
        }
        self.metadata = entries
    }
    
    public var coverArt: NSImage? {
        get {
            do {
                return try parser.getCoverArt()
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.coverArt.rawValue)")
                return nil
            }
        }
    }
    
    public func setCoverArt(imageLocation: URL) throws {
        try parser.set(coverImage: imageLocation)
    }
    
    public func removeCoverArt() throws {
        try parser.removeCoverArt()
    }
    
    // MARK: - Freeform and Removal
    internal func getFreeformMetadata(name: String) throws -> String? {
        return try parser.get(customStringMetadata: name)
    }
    
    internal func setFreeformMetadata(name: String, stringValue: String?) throws {
        if stringValue != nil {
            try parser.set(.unknown, stringValue: stringValue, customName: name)
        } else {
            try parser.set(.unknown, stringValue: nil, customName: name)
        }
    }
    
    public subscript(_ name: String?) -> String? {
        get {
            do {
                return try getFreeformMetadata(name: name ?? "")
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.unknown.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    if let name = name {
                        try setFreeformMetadata(name: name,
                                            stringValue: nil)
                        try setFreeformMetadata(name: name,
                                                stringValue: new)
                    } else {
                        try setFreeformMetadata(name: "Unnamed Freeform Atom",
                                                stringValue: new)
                    }
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.unknown.rawValue)")
                }
            } else {
                do {
                    try setFreeformMetadata(name: name ?? "Unnamed Freeform Atom",
                                            stringValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.unknown.rawValue)")
                }
            }
        }
    }
    
    public mutating func removeAllMetadata() throws {
        try parser.removeAllMetadata()
        self.metadata = []
    }
}
