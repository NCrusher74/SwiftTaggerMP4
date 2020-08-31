//
//  Mp4File.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation

/// A type representing an audio file stored locally
class Mp4File {
    
    var rootAtoms: [Atom]
    var moov: Moov
    var mdats: [Mdat]
    
    /// Initialize an Mp4File from a local file
    /// - Parameter location: the `url` of the mp4 file
    /// - Throws: `InvalidFileFormat` if the file is not a valid mp4 file
    init(location: URL) throws {
        let validExtensions = ["mp4", "m4a", "m4b", "aac", "m4r", "m4p", "aax"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
        } else {
            throw Mp4File.Error.InvalidFileFormat
        }
        
        var data = try Data(contentsOf: location)
        var atoms = [Atom]()
        var moovAtom: Moov? = nil
        if let atom = try data.extractAndParseToAtom() {
            if atom.identifier == "moov" {
                if let moov = atom as? Moov {
                    self.moov = moov
                    moovAtom = moov
                } else {
                    throw Mp4File.Error.MoovAtomNotFound
                }
            } else {
                throw Mp4File.Error.MoovAtomNotFound
            }
            if let moov = moovAtom {
                let fileProperties = try FilePropertyReference(
                    moov: moov, data: data)
                atom.fileProperties = fileProperties
            }
            atoms.append(atom)
        } else {
            throw Mp4File.Error.UnableToInitializeAtoms
        }
        self.rootAtoms = atoms
        
        self.mdats = atoms.filter({$0.identifier == "mdat"}) as? [Mdat] ?? []
        guard !mdats.isEmpty else {
            throw Mp4File.Error.MdatAtomNotFound
        }
    }
}
