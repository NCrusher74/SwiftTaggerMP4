//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/2/20.
//

import Foundation

/// A class representing a `elng` atom in an `Mp4File`'s atom structure
class Elng: Atom {
    private var versionAndFlags: Data // 4
    var language: String
    
    /// Initialize a `elng` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.versionAndFlags = data.extractFirst(4)
        let languageString = data.extractAsStringUntilNullTermination()
        self.language = languageString
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `elng` atom from its content
    init(from locale: ICULocaleCode) throws {
        self.versionAndFlags = Atom.versionAndFlags
        self.language = locale.rawValue
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(locale.rawValue.encodedUtf8WithNullTerminator)
        
        let size = payload.count + 8
        
        try super.init(identifier: "elng",
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(language.encodedUtf8WithNullTerminator)
        return data
    }
}
