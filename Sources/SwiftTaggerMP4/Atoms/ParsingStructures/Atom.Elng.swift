//
//  Elng.swift
//
//
//  Created by Nolaine Crusher on 7/2/20.
//

import Foundation
import SwiftLanguageAndLocaleCodes

/// A class representing a `elng` atom in an `Mp4File`'s atom structure
class Elng: Atom {
    private var version: Data
    private var flags: Data
    var language: ICULocaleCode
    
    /// Initialize a `elng` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        let languageString = data.extractNullTerminatedString()
        if let language = ICULocaleCode(rawValue: languageString) {
            self.language = language
        } else {
            self.language = .unspecified
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `elng` atom from its content
    init(locale: ICULocaleCode) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.language = locale
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(locale.rawValue.encodedUtf8WithNullTerminator)
        
        let size = payload.count + 8
        
        try super.init(identifier: "elng",
                       size: size,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(language.rawValue.encodedUtf8WithNullTerminator)
        return data
    }
}
