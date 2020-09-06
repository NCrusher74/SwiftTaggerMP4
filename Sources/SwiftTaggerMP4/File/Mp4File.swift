/*
  Mp4File.swift
  SwiftTaggerMP4

  Created by Nolaine Crusher on 4/21/20.
  Copyright © 2020 Nolaine Crusher. All rights reserved.
*/

import Foundation
import SwiftLanguageAndLocaleCodes
/// A type representing an audio file stored locally
class Mp4File {
    var _chapterHandler: ChapterDataHandler?
    var _language: ICULocaleCode?    
    @available(OSX 10.12, *)
    public var language: ICULocaleCode? {
        get {
            if let language = _language {
                return language
            } else if let elng = moov.soundTrack.mdia.elng {
                return ICULocaleCode(rawValue: elng.language)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                self._language = new
            }
        }
    }
    
    var rootAtoms: [Atom]
    var moov: Moov
    var mdats: [Mdat]
    var data: Data
    static var use64BitOffset: Bool = false

    /// Initialize an Mp4File from a local file
    /// - Parameter location: the `url` of the mp4 file
    /// - Throws: `InvalidFileFormat` if the file is not a valid mp4 file
    init(location: URL) throws {
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
        
        if let moov = atoms.first(where: {$0.identifier == "moov"}) as? Moov {
            self.moov = moov
            Atom.version = moov.mvhd.version
        } else {
            throw Mp4FileError.MoovAtomNotFound
        }
        self.mdats = atoms.filter({$0.identifier == "mdat"}) as? [Mdat] ?? []
        guard !mdats.isEmpty else {
            throw Mp4FileError.MdatAtomNotFound
        }
        
        if moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.identifier == "co64" {
            Mp4File.use64BitOffset = true
        }
    }
    
    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "mdat":
                return 2
            case "moov":
                return 3
            default:
                return 1
        }
    }
    
    /// The array of root atoms, arranged to preserve media offsets
    var rearrangedRootAtoms: [Atom] {
        var rearrangedAtoms = self.rootAtoms
        rearrangedAtoms.sort(
            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier) }
        )
        return rearrangedAtoms
    }

    func optimizeMedia() throws {
        self.rootAtoms = rearrangedRootAtoms.filter({
            $0.identifier != "free" ||
                $0.identifier != "skip" ||
                $0.identifier != "wide"})
        let mediaHandler = try MediaDataHandler(readFrom: self)
        self.moov.soundTrack.mdia.minf.stbl.chunkOffsetAtom.chunkOffsetTable = mediaHandler.newOffsets
        self.mdats = [mediaHandler.newMdat]
    }
    
    @available(OSX 10.12, *)
    func setChapterTrak() throws {
        let trackID: Int
        if let chapterTrackID = self.moov.chapterTrackID {
            trackID = chapterTrackID
        } else {
            trackID = moov.mvhd.nextTrackID
            self.moov.chapterTrackID = trackID
        }
        let titleMdat = try Mdat(titleArray: self.chapterHandler.chapterTitles)
        self.mdats.append(titleMdat)
        self.rootAtoms = rearrangedRootAtoms
        let trak = try Trak(chapterHandler: self.chapterHandler,
                            language: self._language,
                            moov: self.moov,
                            chapterTrackID: trackID)
        self.moov.chapterTrack = trak
    }

    private func setMetadataAtoms(from tag: Tag) throws {
        var newMetadataAtoms = [Atom]()
        for (_, atom) in tag.metadataAtoms {
            newMetadataAtoms.append(atom)
        }
        if self.moov.udta?.meta?.ilst != nil {
            // ilst exists, alter the children array
            self.moov.udta?.meta?.ilst.children = newMetadataAtoms
        } else {
            // if ilst doesn't exist, meta doesn't exist, because ilst is a required child of meta, so instead we check udta
            let ilst = try Ilst(children: newMetadataAtoms)
            let hdlr = try Hdlr()
            let meta = try Meta(children: [hdlr, ilst])
            if self.moov.udta != nil {
                self.moov.udta?.meta = meta
            } else {
                let udta = try Udta(children: [meta])
                self.moov.udta = udta
            }
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
}
