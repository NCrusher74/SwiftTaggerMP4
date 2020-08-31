//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/2/20.
//

import Foundation
/// Initialize an `moov` atom for parsing from the root structure
class Moov: Atom {
    var tracks: [Trak]
    var mvhd: Mvhd
    var soundTrack: Trak
    
    /// Initialize an `mdat` atom for parsing from the root structure
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
        
        if let mvhd = children.first(where: {$0.identifier == "mvhd"}) as? Mvhd {
            self.mvhd = mvhd
        } else {
            throw Mp4File.Error.MvhdAtomNotFound
        }
        
        let tracks = children.filter({$0.identifier == "trak"}) as? [Trak] ?? []
        guard !tracks.isEmpty else {
            throw Mp4File.Error.TrakAtomNotFound
        }
        self.tracks = tracks
        
        if let soundtrack = tracks.first(where: {
            $0.mdia?.hdlr?.handlerSubtype == .soun
        }) {
            self.soundTrack = soundtrack
        } else {
            throw Mp4File.Error.TrakAtomNotFound
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
    
//    /// Initialize a `moov` atom from its children
//    init(children: [Atom]) throws {
//        var size: Int = 8
//        for child in children {
//            size += child.size
//        }
//        try super.init(identifier: "moov",
//                       size: size,
//                       children: children)
//        guard children.contains(where: {$0.identifier == "mvhd"}) else {
//            throw Mp4File.Error.MvhdAtomNotFound
//        }
//        guard children.contains(where: {$0.identifier == "trak"}) else {
//            throw Mp4File.Error.TrakAtomNotFound
//        }
//        if let trak = children.first(where: {$0.identifier == "trak"}) as? Trak {
//            guard trak.trackType == .soun else {
//                throw Mp4File.Error.TrakAtomNotFound
//            }
//        }
//    }
}
