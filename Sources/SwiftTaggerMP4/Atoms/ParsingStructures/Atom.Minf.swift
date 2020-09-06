/*
  Minf.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing a `minf` atom in an `Mp4File`'s atom structure
class Minf: Atom {
    var dinf: Dinf
    var stbl: Stbl
    var mediaInformationHeaderAtom: Atom
    
    /// Initialize a `minf` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        if let nmhd = children.first(where: {$0.identifier == "nmhd"}) {
            self.mediaInformationHeaderAtom = nmhd
        } else if let gmhd = children.first(where: {$0.identifier == "gmhd"}) {
            self.mediaInformationHeaderAtom = gmhd
        } else if let smhd = children.first(where: {$0.identifier == "smhd"}) {
            self.mediaInformationHeaderAtom = smhd
        } else if let vmhd = children.first(where: {$0.identifier == "vmhd"}) {
            self.mediaInformationHeaderAtom = vmhd
        } else {
            throw MinfError.MediaInformationHeaderAtomNotFound
        }
        
        if let dinf = children.first(where: {$0.identifier == "dinf"}) as? Dinf {
            self.dinf = dinf
        } else {
            throw MinfError.DinfAtomNotFound
        }

        if let stbl = children.first(where: {$0.identifier == "stbl"}) as? Stbl {
            self.stbl = stbl
        } else {
            throw MinfError.StblAtomNotFound
        }

        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    /// Initialize a `minf` atom from its children
    private init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }

        if let nmhd = children.first(where: {$0.identifier == "nmhd"}) {
            self.mediaInformationHeaderAtom = nmhd
        } else if let gmhd = children.first(where: {$0.identifier == "gmhd"}) {
            self.mediaInformationHeaderAtom = gmhd
        } else if let smhd = children.first(where: {$0.identifier == "smhd"}) {
            self.mediaInformationHeaderAtom = smhd
        } else if let vmhd = children.first(where: {$0.identifier == "vmhd"}) {
            self.mediaInformationHeaderAtom = vmhd
        } else {
            throw MinfError.MediaInformationHeaderAtomNotFound
        }
        
        if let dinf = children.first(where: {$0.identifier == "dinf"}) as? Dinf {
            self.dinf = dinf
        } else {
            throw MinfError.DinfAtomNotFound
        }
        
        if let stbl = children.first(where: {$0.identifier == "stbl"}) as? Stbl {
            self.stbl = stbl
        } else {
            throw MinfError.StblAtomNotFound
        }

        try super.init(identifier: "minf",
                       size: size,
                       children: children)
    }
    
    convenience init(chapterHandler: ChapterDataHandler, moov: Moov) throws {
        let stbl = try Stbl(chapterHandler: chapterHandler, moov: moov)
        let dinf = try Dinf(from: try Dref())
        let nmhd = try Nmhd()

        try self.init(children: [nmhd, dinf, stbl])
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            data.append(child.encode())
        }
        return data
    }
    
    private enum MinfError: Error {
        /// Error thrown when a required atom is missing
        case MediaInformationHeaderAtomNotFound
        /// Error thrown when a required atom is missing
        case DinfAtomNotFound
        /// Error thrown when a required atom is missing
        case StblAtomNotFound
    }
}
