/*
  Mdhd.swift


  Created by Nolaine Crusher on 7/2/20.
*/

import Foundation
import SwiftLanguageAndLocaleCodes

/// A class representing a `mdhd` atom in an `Mp4File`'s atom structure
class Mdhd: Atom {
    private var version: Data
    private var flags: Data
    var creationTime: Int
    var modificationTime: Int
    /// The media timescale, i.e. the number of "ticks" per second. In practical terms, this is usually the sampling rate for the audio track, or 1000 for a text track
    var timeScale: Double
    /// The duration of the media contained in the track
    var duration: Double
    private var languageUInt16: UInt16
    var quality: Int
    
    /// Initialize a `mdhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        if self.version.uInt8BE == 0x01 {
            self.creationTime = data.extractFirst(8).uInt64BE.int
            self.modificationTime = data.extractFirst(8).uInt64BE.int
        } else {
            self.creationTime = data.extractFirst(4).uInt32BE.int
            self.modificationTime = data.extractFirst(4).uInt32BE.int
        }
        self.timeScale = data.extractToDouble(4)
        if self.version.uInt8BE == 0x01 {
            self.duration = data.extractToDouble(8)
        } else {
            self.duration = data.extractToDouble(4)
        }
        
        self.languageUInt16 = data.extractFirst(2).uInt16BE
        self.quality = data.extractToInt(2)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Retrieves the `ICULocaleCode` from the `elng` atom (if one exists) and converts it an `ISO-639-2` code
    static func getLanguage(from elng: Elng) -> Language {
        return elng.languages.first ?? .unspecified
    }
    
    var language: Language? {
        get {
            // first see if there's an extended language tag
            var elng: Elng? = nil
            if let siblings = self.siblings {
                elng = siblings.first(where: {$0.identifier == "elng"}) as? Elng
            }
            // if there is, it overrides anything in the language here
            if elng != nil {
                return elng?.languages.first
            } else {
                // see if it's a uInt16 form of the 3-character code
                if let languageCode = ISO6392Code(fromInt16: languageUInt16) {
                    return languageCode.language
                    // otherwise see if it works with a quicktime code
                } else if let languageCode = ISO6392Code(
                            quicktimeCode: Int(languageUInt16)) {
                    return languageCode.language
                } else {
                    return nil
                }
            }
        }
        set {
            // first see if there's an extended language tag
            var elng: Elng? = nil
            if let siblings = self.siblings {
                elng = siblings.first(where: {$0.identifier == "elng"}) as? Elng
            }
            
            // if there is, use the first language as our language here
            if elng != nil {
                if let elngLanguage = elng?.languages.first {
                    self.languageUInt16 = elngLanguage.iso6392Code.getUInt16Code()
                } else {
                    if let newValue = newValue {
                        self.languageUInt16 = newValue.iso6392Code.getUInt16Code()
                    }
                }
            }
        }
    }
    
    /// Initialize a `mdhd` atom from a duration and language.
    ///
    /// **NOTE:** for use in a CHAPTER TRAK ONLY
    init(language: ISO6392Code, moov: Moov) throws {
        
        self.version = Atom.version
        self.flags = Atom.flags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.timeScale = 1000
        self.duration = moov.mvhd.duration / moov.mvhd.timeScale * 1000
        self.languageUInt16 = language.getUInt16Code()
        self.quality = 0
        
        // 4 size
        // 4 id
        // 4 version and flags
        // 4 timescale
        // 2 language
        // 2 quality
        var size: Int = 20
        if self.version.uInt8BE == 0x01 {
            // creation, modification, duration * 8
            size += 24
        } else {
            // creation, modification, duration * 4
            size += 12
        }
        
        try super.init(identifier: "mdhd",
                       size: size)
    }
    
    /// **CHAPTER TRACK ONLY** Initialize a `mdhd` atom from a duration and `elng` atom
    ///
    /// **NOTE:** for use in a CHAPTER TRAK ONLY
    init(elng: Elng, moov: Moov) throws {
        let language = Mdhd.getLanguage(from: elng)
        
        self.version = Atom.version
        self.flags = Atom.flags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        
        self.timeScale = 1000
        self.duration = moov.mvhd.duration / moov.mvhd.timeScale * 1000
        self.languageUInt16 = language.iso6392Code.getUInt16Code()
        self.quality = 0
        
        var size: Int = 20
        if self.version.uInt8BE == 0x01 {
            // creation, modification, duration * 8
            size += 24
        } else {
            // creation, modification, duration * 4
            size += 12
        }

        try super.init(identifier: "mdhd",
                       size: size)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)
        
        data.append(self.version)
        data.append(self.flags)
        if self.version.uInt8BE == 0x01 {
            data.append(self.creationTime.uInt64.beData)
            data.append(self.modificationTime.uInt64.beData)
        } else {
            data.append(self.creationTime.uInt32.beData)
            data.append(self.modificationTime.uInt32.beData)
        }
        data.append(self.timeScale.uInt32.beData)
        if self.version.uInt8BE == 0x01 {
            data.append(self.duration.uInt64.beData)
        } else {
            data.append(self.duration.uInt32.beData)
        }
        data.append(self.languageUInt16.beData)
        data.append(self.quality.uInt16.beData)
        return data
    }
}
