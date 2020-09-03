//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation
import Cocoa

extension Mp4File {
    public func getCoverArt() -> NSImage? {
        if let atom = metadataAtoms["cover"] as? ImageMetadataAtom {
            return atom.image
        } else {
            return nil
        }
    }
    
    public func setCoverArt(imageLocation: URL) throws {
        let atom = try ImageMetadataAtom(imageLocation: imageLocation)
        metadataAtoms["covr"] = atom
    }
    
    public func removeCoverArt() throws {
        let newIlstChildren = self.moov.udta?.meta?.ilst.children.filter({$0.identifier != "covr"})
        self.moov.udta?.meta?.ilst.children = newIlstChildren ?? []
    }
    
    public subscript(_ description: String?) -> String? {
        get {
            if let atom = self.metadataAtoms[description ?? ""] as? UnknownMetadataAtom {
                return atom.name
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
                    print("WARNING: Unable to initialize metadata atom with identifier \(description ?? "")")
                }
            } else {
                self.metadataAtoms[description ?? ""] = nil
            }
        }
    }
}
