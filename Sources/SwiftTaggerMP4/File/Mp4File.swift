//
//  Mp4File.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation

/// A type representing an audio file stored locally
struct Mp4File {
    
    private let location: URL
//    var metadata: [()]
    var rootAtoms: [Atom]
    var reference: FilePropertyReference
    
    /// Initialize an Mp4File from a local file
    /// - Parameter location: the `url` of the mp4 file
    /// - Throws: `InvalidFileFormat` if the file is not a valid mp4 file
    init(location: URL) throws {
        let validExtensions = ["mp4", "m4a", "m4b", "aac", "m4r", "m4p", "aax"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
            self.location = location
        } else {
            throw Mp4File.Error.InvalidFileFormat
        }
        
        var data = try Data(contentsOf: location)
        var atoms = [Atom]()
        if let atom = try data.extractAndParseToAtom() {
            atoms.append(atom)
        }
        self.rootAtoms = atoms
        self.reference = try FilePropertyReference(rootAtoms: atoms)
    }
}
