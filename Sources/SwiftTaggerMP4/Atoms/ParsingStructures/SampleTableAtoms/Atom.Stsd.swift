/*
  Stsd.swift


  Created by Nolaine Crusher on 6/21/20.
*/

import Foundation
/// A class representing a `stsd` atom in an `Mp4File`'s atom structure
///
/// The sample description atom has an atom type of `stsd`.
/// The sample description atom contains a table of sample descriptions. A media may have one or more sample descriptions, depending upon the number of different encoding schemes used in the media and on the number of files used to store the data. The sample-to-chunk atom identifies the sample description for each sample in the media by specifying the index into this table for the appropriate description (see Sample-to-Chunk Atoms).
/// In practical terms, the "table" is actually one or more subatoms, such as a `text` atom for a text track, or an `mp4a` atom for an audio track
class Stsd: Atom {
    
    private var version: Data
    private var flags: Data
    /// The number of entries (in practical terms, sub-atoms) in the sample description table
    var entryCount: Int

    /// Initialize a `stsd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws  {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }

        try super.init(identifier: identifier,
                       size: size,
                       payload: payload,
                       children: children)
    }
    
    /// **CHAPTER TRACK ONLY** Initialize an `stsd` atom with default properties for building a chapter track
    init() throws {
        self.version = Atom.version // 1
        self.flags = Atom.flags // 3
        self.entryCount = 1 // 4
        let child = try Text()
        
        let size = 16 + child.size
        
        try super.init(identifier: "stsd",
                       size: size,
                       children: [child])
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)
        
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.uInt32.beData)
        data.append(contentsOf: children.flatMap({$0.encode}))

        return data
    }
}
