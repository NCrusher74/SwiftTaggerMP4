/*
 Mp4File.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 4/21/20.
 Copyright © 2020 Nolaine Crusher. All rights reserved.
 */

import Foundation
import SwiftLanguageAndLocaleCodes
/// A type representing an audio file stored locally
public class Mp4File {
    var rootAtoms: [Atom]
    var data: Data
    static var use64BitOffset: Bool = false
    /// Initialize an Mp4File from a local file
    /// - Parameter location: the `url` of the mp4 file
    /// - Throws: `InvalidFileFormat` if the file is not a valid mp4 file
    @available(OSX 10.12, *)
    public init(location: URL) throws {
        let validExtensions = ["mp4", "m4a", "m4b", "aac", "m4r", "m4p", "aax"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
        } else {
            throw Mp4FileError.InvalidFileFormat
        }
        
        self.data = try Data(contentsOf: location)
        var fileData = self.data
        var atoms = [Atom]()
        while !fileData.isEmpty {
            if let atom = try fileData.extractAndParseToAtom() {
                atoms.append(atom)
            } else {
                throw Mp4FileError.UnableToInitializeAtoms
            }
        }
        self.rootAtoms = atoms
        
        if self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.identifier == "co64" {
            Mp4File.use64BitOffset = true
        }
    }
    
    @available(OSX 10.12, *)
    public func tag() throws -> Tag {
        return try Tag(mp4File: self)
    }
    
    @available(OSX 10.12, *)
    public func write(tag: Tag, to outputLocation: URL) throws {
        let mediaData = try self.getMediaData()
        try setMetadataAtoms(tag: tag)
        setLanguage(tag: tag)
        try setChapterTrack(mediaData: mediaData, tag: tag)
        try setMdat(mediaData: mediaData, tag: tag)
        
        var outputData = Data()
        for atom in self.optimizedRoot {
            outputData.append(atom.encode)
        }
        try outputData.write(to: outputLocation)
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "ftyp": return 1
            case "mdat": return 4
            case "moov": return 3
            default: return 2
        }
    }
    
    /// The array of root atoms, arranged to preserve media offsets
    private var optimizedRoot: [Atom] {
        var rearrangedAtoms = self.rootAtoms
        rearrangedAtoms.sort(
            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier) }
        )
        return rearrangedAtoms
    }
    
    // properties
    var duration: Double {
        return moov.mvhd.duration
    }
    
    @available(OSX 10.12, *)
    var language: ICULocaleCode? {
        get {
            if let elng = moov.soundTrack.mdia.elng {
                return ICULocaleCode(rawValue: elng.language.rawValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue, new != .unspecified {
                let newTracks = self.moov.tracks
                for track in newTracks {
                    if track.mdia.elng != nil {
                        track.mdia.elng?.language = new
                        track.mdia.mdhd.language = Mdhd.getLanguage(from: track.mdia.elng!)
                    } else {
                        do {
                            let elng = try Elng(locale: new)
                            track.mdia.elng = elng
                            track.mdia.mdhd.language = Mdhd.getLanguage(from: track.mdia.elng!)
                        } catch {
                            fatalError("WARNING: Unable to initialize extended language atom")
                        }
                    }
                }
                self.moov.tracks = newTracks
            } else {
                self.moov.soundTrack.mdia.elng = nil
                self.moov.soundTrack.mdia.mdhd.language = .und
                if self.moov.chapterTrack != nil {
                    self.moov.chapterTrack?.mdia.elng = nil
                    self.moov.chapterTrack?.mdia.mdhd.language = .und
                }
            }
        }
    }
    
    // MARK: Internal properties
    var moov: Moov {
        get {
            if let moov = rootAtoms.first(where: {$0.identifier == "moov"}) as? Moov {
                return moov
            } else {
                fatalError("Required atom 'moov' is inaccessible")
            }
        }
        set {
            var newRoot = rootAtoms.filter({$0.identifier != "moov"})
            newRoot.append(newValue)
            rootAtoms = newRoot
        }
    }
    
    var mdats: [Mdat] {
        get {
            if let mdats = rootAtoms.filter({$0.identifier == "mdat"}) as? [Mdat] {
                return mdats
            } else {
                return []
            }
        }
        set {
            var newRoot = rootAtoms.filter({$0.identifier != "mdat"})
            newRoot.append(contentsOf: newValue)
            rootAtoms = newRoot
        }
    }

}

enum Mp4FileError: Error {
    /// Error thrown when the file is not an MP4 format audio file
    case InvalidFileFormat
    /// Error thrown when writing operation fails
    case OutputFailure
    /// Error thrown when atoms fail to initialize
    case UnableToInitializeAtoms
    /// Error thrown when a required root atom is missing
    case MoovAtomNotFound
    /// Error thrown when a required root atom is missing
    case MdatAtomNotFound
    /// Error thrown when samples cannot be located
    case MissingSample
    /// Error thrown when media chunk cannot be located
    case MissingChunk
    /// Error thrown when entry count of the chunkSizes array does not match the count of the chunkOffsets array
    case ChunkSizeToChunkOffsetCountMismatch
    /// Error thrown when the new chunk offsets array doesn't match the old chunk offsets array
    case NewChunkOffsetArrayCountMismatch
}
