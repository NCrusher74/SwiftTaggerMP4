/*
  PassThrough.swift


  Created by Nolaine Crusher on 6/30/20.
*/

import Foundation

/// A class representing atoms that are untouched in chaptering or metadata manipulation
class PassThrough: Atom {
    
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
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        return self.payload
    }
}
