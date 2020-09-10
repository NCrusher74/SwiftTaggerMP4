/*
  Stbl.swift
  

  Created by Nolaine Crusher on 8/4/20.
*/

import Foundation

/// A class representing a `stbl` atom in an `Mp4File`'s atom structure
class Stbl: Atom {
    
    var stsd: Stsd
    var stsc: Stsc
    var stts: Stts
    var stsz: Stsz
    var chunkOffsetAtom: ChunkOffsetAtom
    
    /// Initialize a `stbl` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let stsd = children.first(where: {$0.identifier == "stsd"}) as? Stsd {
            self.stsd = stsd
        } else {
            throw StblError.StsdAtomNotFound
        }

        if let stsc = children.first(where: {$0.identifier == "stsc"}) as? Stsc{
            self.stsc = stsc
        } else {
            throw StblError.StscAtomNotFound
        }

        if let stts = children.first(where: {$0.identifier == "stts"}) as? Stts {
            self.stts = stts
        } else {
            throw StblError.SttsAtomNotFound
        }

        if let stsz = children.first(where: {$0.identifier == "stsz"}) as? Stsz {
            self.stsz = stsz
        } else {
            throw StblError.StszAtomNotFound
        }

        if let chunkOffsetAtom = children.first(where: {$0.identifier == "co64"}) as? ChunkOffsetAtom {
            self.chunkOffsetAtom = chunkOffsetAtom
        } else if let chunkOffsetAtom = children.first(where: {$0.identifier == "stco"}) as? ChunkOffsetAtom {
            self.chunkOffsetAtom = chunkOffsetAtom
        } else {
            throw StblError.ChunkOffsetAtomNotFound
        }

        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize an `stbl` atom from its children
    private init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        
        if let stsd = children.first(where: {$0.identifier == "stsd"}) as? Stsd {
            self.stsd = stsd
        } else {
            throw StblError.StsdAtomNotFound
        }
        
        if let stsc = children.first(where: {$0.identifier == "stsc"}) as? Stsc{
            self.stsc = stsc
        } else {
            throw StblError.StscAtomNotFound
        }
        
        if let stts = children.first(where: {$0.identifier == "stts"}) as? Stts {
            self.stts = stts
        } else {
            throw StblError.SttsAtomNotFound
        }
        
        if let stsz = children.first(where: {$0.identifier == "stsz"}) as? Stsz {
            self.stsz = stsz
        } else {
            throw StblError.StszAtomNotFound
        }
        
        if let co64 = children.first(where: {$0.identifier == "co64"}) as? ChunkOffsetAtom {
            self.chunkOffsetAtom = co64
        } else if let stco = children.first(where: {$0.identifier == "stco"}) as? ChunkOffsetAtom {
            self.chunkOffsetAtom = stco
        } else {
            throw StblError.ChunkOffsetAtomNotFound
        }

        try super.init(identifier: "stbl",
                       size: size,
                       children: children)
    }
    
    convenience init(chapterHandler: ChapterDataHandler,
                     moov: Moov,
                     startingOffset: Int) throws {
        let stsd = try Stsd()
        let stsc = try Stsc()

        var starts = [Double]()
        for start in chapterHandler.chapterStarts {
            starts.append(Double(start))
        }
        let mvhd = moov.mvhd
        let stts = try Stts(startTimes: starts,
                             fileDuration: mvhd.duration)
        
        let stsz = try Stsz(titles: chapterHandler.chapterTitles)

        let chunkOffsetAtom = try ChunkOffsetAtom(
            use64BitOffset: Mp4File.use64BitOffset,
            startingOffset: startingOffset,
            titles: chapterHandler.chapterTitles)
        try self.init(children: [stsd, stsc, stts, stsz, chunkOffsetAtom])
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
    
    private enum StblError: Error {
        /// Error thrown when a required atom is missing
        case StsdAtomNotFound
        /// Error thrown when a required atom is missing
        case StscAtomNotFound
        /// Error thrown when a required atom is missing
        case ChunkOffsetAtomNotFound
        /// Error thrown when a required atom is missing
        case StszAtomNotFound
        /// Error thrown when a required atom is missing
        case SttsAtomNotFound
        case UnableToBuildStblAtom
    }
}
