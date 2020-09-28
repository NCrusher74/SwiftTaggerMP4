//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation
import Cocoa
import SwiftLanguageAndLocaleCodes

struct Tag {
    var metadataAtoms: [AtomKey: Atom]
    var language: ICULocaleCode
    var duration: Int
    var chapterHandler: ChapterHandler
    
    @available(OSX 10.12, *)
    init(mp4File: Mp4File) throws {
        let moov = mp4File.moov
        let data = mp4File.data
        self.chapterHandler = try ChapterHandler(
            moov: moov, fileData: data)

        var metadata = [AtomKey: Atom]()
        if moov.udta?.meta?.ilst.children == nil {
            self.metadataAtoms = [:]
        } else {
            for atom in moov.udta?.meta?.ilst.children ?? [] {
                if StringMetadataIdentifier(rawValue: atom.identifier) != nil ||
                    IntegerMetadataIdentifier(rawValue: atom.identifier) != nil ||
                    atom.identifier == "disk" || atom.identifier == "trkn" || atom.identifier == "covr" {
                    metadata[atom.atomKey] = atom
                } else if atom.identifier == "----" {
                    metadata[atom.atomKey] = atom
//                    if let unknownAtom = atom as? UnknownMetadataAtom {
//                        metadata[unknownAtom.name] = atom
//                    }
                }
            }
            self.metadataAtoms = metadata
        }
                
        if let language = mp4File.language {
            self.language = language
        } else {
            self.language = .unspecified
        }
        self.duration = Int(mp4File.duration)
    }
}

extension Tag {
//    var metadata: [(identifier: String, value: Any)] {
//        var metadataList = [(String, Any)]()
//        if !self.metadataAtoms.isEmpty {
//            for item in self.metadataAtoms {
//                if StringMetadataIdentifier(rawValue: item.key) != nil {
//                    let atom = item.value as! StringMetadataAtom
//                    metadataList.append((item.key, atom.stringValue))
//                } else if IntegerMetadataIdentifier(rawValue: item.key) != nil {
//                    let atom = item.value as! IntegerMetadataAtom
//                    metadataList.append((item.key, atom.intValue))
//                } else if item.key == "trkn" || item.key == "disk" {
//                    let atom = item.value as! PartAndTotalMetadataAtom
//                    let value = "\(atom.part) of \(atom.total ?? 0)"
//                    let entry = (item.key, value)
//                    metadataList.append(entry)
//                } else if item.key == "covr" {
//                    continue
//                } else {
//                    let atom = item.value as! UnknownMetadataAtom
//                    let entry = (item.key, atom.stringValue)
//                    metadataList.append(entry)
//                }
//            }
//        } else {
//            metadataList = []
//        }
//        return metadataList
//    }

    mutating func removeAllMetadata() {
        self.metadataAtoms = [:]
    }
    
    var coverArt: NSImage? {
        if let atom = metadataAtoms[.coverArt] as? ImageMetadataAtom {
            return atom.image
        } else {
            return nil
        }
    }
    
    mutating func setCoverArt(location imageLocation: URL) throws {
        let atom = try ImageMetadataAtom(imageLocation: imageLocation)
        metadataAtoms[.coverArt] = atom
    }
    
    mutating func removeCoverArt() throws {
        metadataAtoms[.coverArt] = nil
    }
    
    subscript(_ description: String?) -> String? {
        get {
            if let atom = self.metadataAtoms[.unknown(description ?? "")] as? UnknownMetadataAtom {
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
                self.metadataAtoms[.unknown(description ?? "")] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(description ?? "")")
                }
            } else {
                self.metadataAtoms[.unknown(description ?? "")] = nil
            }
        }
    }
}
