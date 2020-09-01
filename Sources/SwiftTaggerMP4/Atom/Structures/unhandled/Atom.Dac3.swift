/*
  Dac3.swift
  

  Created by Nolaine Crusher on 9/1/20.
*/

import Foundation

/// A class representing a `dac3` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
/// Data will simply pass through
class Dac3: Atom {
    
    private var payload: Data
    
    /// Initialize an atom for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        
        self.payload = payload
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        return self.payload
    }
}
