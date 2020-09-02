/*
  Mp4File.swift
  SwiftTaggerMP4

  Created by Nolaine Crusher on 4/21/20.
  Copyright © 2020 Nolaine Crusher. All rights reserved.
*/

import Foundation

/// A type representing an audio file stored locally
class Mp4File {
    
    var rootAtoms: [Atom]
    var moov: Moov
    var mdats: [Mdat]
    var data: Data
    
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
        
        self.data = try Data(contentsOf: location)
        var atoms = [Atom]()

        while !data.isEmpty {
            if let atom = try data.extractAndParseToAtom() {
                atoms.append(atom)
            } else {
                throw Mp4File.Error.UnableToInitializeAtoms
            }
        }
        self.rootAtoms = atoms
        
        if let moov = atoms.first(where: {$0.identifier == "moov"}) as? Moov {
            self.moov = moov
            Atom.version = moov.mvhd.version
            Mp4File.mediaTimeScale = Double(moov.soundTrack.mdia.mdhd.timeScale)
            Mp4File.mediaDuration = Double(moov.soundTrack.mdia.mdhd.duration)
        } else {
            throw Mp4File.Error.MoovAtomNotFound
        }

        self.mdats = atoms.filter({$0.identifier == "mdat"}) as? [Mdat] ?? []
        guard !mdats.isEmpty else {
            throw Mp4File.Error.MdatAtomNotFound
        }
    }
}
