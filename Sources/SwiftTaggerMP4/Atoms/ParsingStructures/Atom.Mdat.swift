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
    
    override var contentData: Data {
        return self.payload
    }
    
    /// create an `mdat` atom with the media data up front and the chapter title data at the end
    init(mediaData: Data, titleArray: [String]) throws {
        var payload = Data()
        payload.append(mediaData)
        for title in titleArray {
            payload.append(title.count.int16.beData)
            payload.append(title.encodedUtf8)
        }
        self.payload = payload
        
        let size = payload.count + 8
        try super.init(identifier: "mdat", size: size, payload: payload)
    }
}
