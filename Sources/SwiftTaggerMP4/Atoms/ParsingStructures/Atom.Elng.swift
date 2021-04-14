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
    var languages: [Language]
    
    /// Initialize a `elng` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        var languageArray = [Language]()
        while !data.isEmpty {
            let languageString = data.extractNullTerminatedString()
            if let locale = ICULocaleCode(rawValue: languageString) {
                languageArray.append(locale.language)
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
        var languageArray = [Language]()
        for locale in locales {
            let language = locale.language
            languageArray.append(language)
        }
        self.languages = languageArray
        
        let size = 12 + locales.map({$0.rawValue.utf8.count}).sum()
        
        try super.init(identifier: "elng",
                       size: size)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)

        data.append(self.version)
        data.append(self.flags)
        for language in self.languages {
            data.append(language.localeCode.rawValue.nullTerminatedUtf8)
        }
        return data
    }
}
