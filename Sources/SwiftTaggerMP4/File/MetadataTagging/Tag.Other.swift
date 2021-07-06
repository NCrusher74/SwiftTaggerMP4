//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/1/20.
//

import Foundation
import SwiftConvenienceExtensions


extension Tag {
    /// Erases all metadata except cover art. Use `removeCoverArt` if necessary
    public mutating func removeAllMetadata(includingCoverArt: Bool = false) {
        if includingCoverArt {
            metadataAtoms = [:]
        } else {
            metadataAtoms = metadataAtoms
                .filter({$0.key == .coverArt})
        }
    }
    
    public var coverArt: NativeImage? {
        if let atom = metadataAtoms[.coverArt] as? ImageMetadataAtom {
            return atom.image
        } else {
            return nil
        }
    }
    
    public mutating func setCoverArt(location imageLocation: URL) throws {
        let atom = try ImageMetadataAtom(imageLocation: imageLocation)
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
