//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation
import SwiftLanguageAndLocaleCodes

public struct Tag {
    public var metadataAtoms: [AtomKey: Atom]
    public var unknownAtoms: [UnknownMetadataAtom]
    public var languages: [ICULocaleCode]
    public var duration: Int
    var chapterHandler: ChapterHandler
    
    @available(OSX 10.12, *)
    public init(mp4File: Mp4File) throws {
        let moov = mp4File.moov
        let data = mp4File.data
        self.chapterHandler = try ChapterHandler(
            moov: moov, fileData: data)

        var metadata = [AtomKey: Atom]()
        var unknownAtoms = [UnknownMetadataAtom]()
        if moov.udta?.meta?.ilst.children == nil {
            self.metadataAtoms = [:]
            self.unknownAtoms = []
        } else {
            for atom in moov.udta?.meta?.ilst.children ?? [] {
                if StringMetadataIdentifier(rawValue: atom.identifier) != nil ||
                    IntegerMetadataIdentifier(rawValue: atom.identifier) != nil ||
                    atom.identifier == "disk" || atom.identifier == "trkn" || atom.identifier == "covr" {
                    metadata[atom.atomKey] = atom
                } else if atom.identifier == "----" {
                    metadata[atom.atomKey] = atom
                    if let unknown = atom as? UnknownMetadataAtom {
                        unknownAtoms.append(unknown)
                    }
                }
            }
            self.metadataAtoms = metadata
            self.unknownAtoms = unknownAtoms
        }
        
        if let languages = mp4File.languages {
            self.languages = languages
        } else {
            self.languages = [.unspecified]
        }
        self.duration = Int(mp4File.duration)
    }
}
