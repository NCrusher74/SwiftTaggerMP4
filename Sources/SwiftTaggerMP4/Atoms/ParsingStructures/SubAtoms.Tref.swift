/*
 Subatoms.Tref.swift
 
 
 Created by Nolaine Crusher on 6/30/20.
 */

import Foundation

/// A class representing the child atoms of a `tref` atom in an `Mp4File`'s atom structure
class TrefSubatom: Atom {
    /// The trackIDs of the referenced tracks
    var trackIDs: [Int]
    
    /// Initialize track reference atoms upon parsing
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        var ids: [Int] = []
        while !data.isEmpty {
            let id = data.extractToInt(4)
            ids.append(id)
        }        
        self.trackIDs = ids
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `chap` reference atom
    init(chapterTrackID: Int) throws {
        self.trackIDs = [chapterTrackID]
        try super.init(identifier: "chap",
                       size: 12,
                       payload: chapterTrackID.uInt32.beData)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = 4 + (trackIDs.count * 4)
        var data = Data()
        data.reserveCapacity(reserve)
        data.append(contentsOf: trackIDs.flatMap({$0.uInt32.beData}))

        return data
    }
}
