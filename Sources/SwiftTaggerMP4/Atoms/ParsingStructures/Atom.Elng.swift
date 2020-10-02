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
    var languages: [ICULocaleCode]
    
    /// Initialize a `elng` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        var languageArray = [ICULocaleCode]()
        while !data.isEmpty {
            let languageString = data.extractNullTerminatedString()
            if let language = ICULocaleCode(rawValue: languageString) {
                languageArray.append(language)
            }
        }
        self.languages = languageArray
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `elng` atom from its content
    init(locales: [ICULocaleCode]) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.languages = locales
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        for locale in locales {
            payload.append(locale.rawValue.nullTerminatedUtf8)
        }
        
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
        for language in self.languages {
            data.append(language.rawValue.nullTerminatedUtf8)
        }
        return data
    }
}
