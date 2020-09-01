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
            let id = data.extractTo32BitInt()
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
                       payload: chapterTrackID.beDataFrom32BitInt)
    }
    
    override var contentData: Data {
        var data = Data()
        for id in self.trackIDs {
            data.append(id.beDataFrom32BitInt)
        }
        return data
    }
}
