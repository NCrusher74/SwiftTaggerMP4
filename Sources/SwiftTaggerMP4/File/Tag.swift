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
    
    public var languages: [Language] = []
    public var duration: Int
    var chapterHandler: ChapterHandler
    var location: URL
    
    public init(mp4File: Mp4File) throws {
        self.location = mp4File.location
        self.chapterHandler = try ChapterHandler(file: mp4File)

        let moov = mp4File.moov
        var metadata = [AtomKey: Atom]()
        if moov.udta?.meta?.ilst.children == nil {
            self.metadataAtoms = [:]
        } else {
            for atom in moov.udta?.meta?.ilst.children ?? [] {
                if atom.identifier == "----" {
                    if let atom = atom as? UnknownMetadataAtom {
                        let key = AtomKey.unknown(atom.name)
                        metadata[key] = atom
                    }
                } else {
                    let key = AtomKey(idString: atom.identifier)
                    metadata[key] = atom
                }
            }
            self.metadataAtoms = metadata
        }
        
        if let languages = mp4File.languages {
            self.languages = languages
        } else {
            self.languages = [.unspecified]
        }
        self.duration = Int(mp4File.duration)
    }    
}
