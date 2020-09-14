/*
  Trak.swift


  Created by Nolaine Crusher on 8/3/20.
*/

import Foundation
import SwiftLanguageAndLocaleCodes

class Trak: Atom {
    /// Initialize an `trak` atom for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        guard children.contains(where: {$0.identifier == "tkhd"}) else {
            throw TrakError.TkhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "mdia"}) else {
            throw TrakError.MdiaAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    override var contentData: Data {
        var data = Data()
        for child in children {
            let childData = child.encode()
            data.append(childData)
        }
        return data
    }
    
    /// Initialize a `trak` atom from its children
    private init(children: [Atom]) throws {
        var size: Int = 8
        for child in children {
            size += child.size
        }
        guard children.contains(where: {$0.identifier == "tkhd"}) else {
            throw TrakError.TkhdAtomNotFound
        }
        guard children.contains(where: {$0.identifier == "mdia"}) else {
            throw TrakError.MdiaAtomNotFound
        }

        try super.init(identifier: "trak",
                       size: size,
                       children: children)
    }
    
    @available(OSX 10.12, *)
    convenience init(chapterHandler: ChapterHandler,
         language: ICULocaleCode?,
         moov: Moov,
         chapterTrackID: Int) throws {
        let duration = (moov.soundTrack.mdia.mdhd.duration / moov.soundTrack.mdia.mdhd.timeScale) * 1000
        let tkhd = try Tkhd(mediaDuration: duration, trackID: chapterTrackID)
        let mdia = try Mdia(chapterHandler: chapterHandler,
                            language: language,
                            moov: moov)
        try self.init(children: [tkhd, mdia])
    }
    
    private enum TrakError: Error {
        /// Error thrown when a required atom is missing
        case TkhdAtomNotFound
        /// Error thrown when a required atom is missing
        case MdiaAtomNotFound
    }
}

extension Trak {
    var tkhd: Tkhd {
        get {
            if let atom = self[.tkhd] as? Tkhd {
                return atom
            } else {
                fatalError("Required child 'tkhd' is missing from atom '\(self.identifier)'")
            }
        }
        set {
            self[.tkhd] = newValue
        }
    }

    var mdia: Mdia {
        get {
            if let atom = self[.mdia] as? Mdia {
                return atom
            } else {
                fatalError("Required child 'mdia' is missing from atom '\(self.identifier)'")
            }
        }
        set {
            self[.mdia] = newValue
        }
    }
    
    /// Gets and sets a `edts` atom
    var edts: Edts? {
        get {
            self[.edts] as? Edts
        }
        set {
            self[.edts] = newValue
        }
    }
    
    /// Gets and sets the `tref` atom on the sound `trak`
    var tref: Tref? {
        get {
            let trackType = self.mdia.hdlr.handlerSubtype
            if trackType == .soun {
                return self[.tref] as? Tref
            } else {
                return nil
            }
        }
        set {
            let trackType = self.mdia.hdlr.handlerSubtype
            if trackType == .soun {
                if let new = newValue {
                    var newChildren = children.filter({$0.identifier != "tref"})
                    newChildren.append(new)
                    self.children = newChildren
                } else {
                    let newChildren = children.filter({$0.identifier != "tref"})
                    self.children = newChildren
                }
            }
        }
    }
}
