/*
  Mdat.swift


  Created by Nolaine Crusher on 8/2/20.
*/

import Foundation

/// Initialize an `mda` atom for parsing from the root structure
class Mdat: Atom {
    private var payload: Data
    
    /// Initialize an `mdat` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        self.payload = payload
        
        try super.init(identifier: identifier, size: size, payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        return self.payload
    }
    
    /// create an `mdat` atom with the media data up front and the chapter title data at the end
    init(mediaData: Data, titleArray: [String]) throws {
        let reserve = mediaData.count + titleArray.map({$0.utf8.count + 2}).sum()
        var payload = Data()
        payload.reserveCapacity(reserve)

        payload.append(mediaData)
        for title in titleArray {
            payload.append(title.count.uInt16.beData)
            payload.append(title.encodedUtf8)
        }
        self.payload = payload
        
        let size = reserve + 8
        try super.init(identifier: "mdat", size: size, payload: payload)
    }
}
