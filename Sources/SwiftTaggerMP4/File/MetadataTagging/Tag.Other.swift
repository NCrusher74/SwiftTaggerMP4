//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/1/20.
//

import Foundation
import SwiftConvenienceExtensions

extension Tag {
    public mutating func removeAllMetadata() {
        self.metadataAtoms = [:]
    }
    
    public var coverArt: NativeImage? {
        if let atom = metadataAtoms[.coverArt] as? ImageMetadataAtom {
            return atom.image
        } else {
            return nil
        }
    }
    
    @available(OSX 10.12, *)
    public mutating func setCoverArt(location imageLocation: URL) throws {
        let atom = try ImageMetadataAtom(imageLocation: imageLocation)
        metadataAtoms[.coverArt] = atom
    }

    @available(iOS 10.10, *)
    public mutating func setCoverArt(path imagePath: String) throws {
        let atom = try ImageMetadataAtom(imagePath: imagePath)
        metadataAtoms[.coverArt] = atom
    }

    public mutating func removeCoverArt() throws {
        metadataAtoms[.coverArt] = nil
    }
    
    public subscript(_ description: String?) -> String? {
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
