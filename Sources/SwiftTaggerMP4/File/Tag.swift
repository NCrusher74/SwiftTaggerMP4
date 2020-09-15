//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation
import Cocoa
import SwiftLanguageAndLocaleCodes

public struct Tag {
    public var metadataAtoms: [String: Atom]
    public var language: ICULocaleCode
    var chapterHandler: ChapterHandler
    
    @available(OSX 10.12, *)
    public init(mp4File: Mp4File) throws {
        let moov = mp4File.moov
        let data = mp4File.data
        self.chapterHandler = try ChapterHandler(
            moov: moov, fileData: data)

        var metadata = [String: Atom]()
        for atom in moov.udta?.meta?.ilst.children ?? [] {
            if StringMetadataIdentifier(rawValue: atom.identifier) != nil ||
                IntegerMetadataIdentifier(rawValue: atom.identifier) != nil ||
                atom.identifier == "disk" || atom.identifier == "trkn" || atom.identifier == "covr" {
                metadata[atom.identifier] = atom
            } else if atom.identifier == "----" {
                if let unknownAtom = atom as? UnknownMetadataAtom {
                    metadata[unknownAtom.name] = atom
                }
            }
        }
        self.metadataAtoms = metadata
        if let language = mp4File.language {
            self.language = language
        } else {
            self.language = .unspecified
        }
    }
}

extension Tag {
    public mutating func removeAllMetadata() {
        self.metadataAtoms = [:]
    }
    
    public var coverArt: NSImage? {
        if let atom = metadataAtoms["covr"] as? ImageMetadataAtom {
            return atom.image
        } else {
            return nil
        }
    }
    
    public mutating func setCoverArt(location imageLocation: URL) throws {
        let atom = try ImageMetadataAtom(imageLocation: imageLocation)
        metadataAtoms["covr"] = atom
    }
    
    public mutating func removeCoverArt() throws {
        metadataAtoms["covr"] = nil
    }
    
    public subscript(_ description: String?) -> String? {
        get {
            if let atom = self.metadataAtoms[description ?? ""] as? UnknownMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                let atom = try UnknownMetadataAtom(name: description ?? "",
                                                   stringValue: new)
                self.metadataAtoms[description ?? ""] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(description ?? "")")
                }
            } else {
                self.metadataAtoms[description ?? ""] = nil
            }
        }
    }
}
