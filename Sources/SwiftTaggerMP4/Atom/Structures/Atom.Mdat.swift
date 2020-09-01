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
    
    init(titleArray: [String]) throws {
        var payload = Data()
        for title in titleArray {
            let countData = title.count.beDataFrom16BitInt
            let titleData = title.encodedUtf8
            payload.append(countData)
            payload.append(titleData)
        }
        self.payload = payload
        
        let size = payload.count + 8
        try super.init(identifier: "mdat", size: size, payload: payload)
    }
}
