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
    private var languageInt16: Int16
    var quality: Int
    
    /// Initialize a `mdhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        if self.version.int8BE == 0x01 {
            self.creationTime = data.extractFirst(8).int64BE.int
            self.modificationTime = data.extractFirst(8).int64BE.int
        } else {
            self.creationTime = data.extractFirst(4).int32BE.int
            self.modificationTime = data.extractFirst(4).int32BE.int
        }
        self.timeScale = data.extractToDouble(4)
        if self.version.int8BE == 0x01 {
            self.duration = data.extractToDouble(8)
        } else {
            self.duration = data.extractToDouble(4)
        }
        
        self.languageInt16 = data.extractFirst(2).int16BE
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
                if let languageCode = ISO6392Code(fromInt16: languageInt16) {
                    return languageCode.language
                    // otherwise see if it works with a quicktime code
                } else if let languageCode = ISO6392Code(
                            quicktimeCode: Int(languageInt16)) {
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
                    self.languageInt16 = elngLanguage.iso6392Code.getInt16Code()
                } else {
                    if let newValue = newValue {
                        self.languageInt16 = newValue.iso6392Code.getInt16Code()
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
        self.languageInt16 = language.getInt16Code()
        self.quality = 0
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        if self.version.int8BE == 0x01 {
            payload.append(self.creationTime.int64.beData)
            payload.append(self.modificationTime.int64.beData)
        } else {
            payload.append(self.creationTime.int32.beData)
            payload.append(self.modificationTime.int32.beData)
        }
        payload.append(self.timeScale.int32.beData)
        if self.version.int8BE == 0x01 {
            payload.append(self.duration.int64.beData)
        } else {
            payload.append(self.duration.int32.beData)
        }
        payload.append(self.languageInt16.beData)
        payload.append(self.quality.int16.beData)

        try super.init(identifier: "mdhd",
                       size: payload.count + 8,
                       payload: payload)
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
        self.languageInt16 = language.iso6392Code.getInt16Code()
        self.quality = 0
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        if self.version.int8BE == 0x01 {
            payload.append(self.creationTime.int64.beData)
            payload.append(self.modificationTime.int64.beData)
        } else {
            payload.append(self.creationTime.int32.beData)
            payload.append(self.modificationTime.int32.beData)
        }
        payload.append(self.timeScale.int32.beData)
        if self.version.int8BE == 0x01 {
            payload.append(self.duration.int64.beData)
        } else {
            payload.append(self.duration.int32.beData)
        }
        payload.append(self.languageInt16.beData)
        payload.append(self.quality.int16.beData)

        try super.init(identifier: "mdhd",
                       size: payload.count + 8,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        if self.version.int8BE == 0x01 {
            data.append(self.creationTime.int64.beData)
            data.append(self.modificationTime.int64.beData)
        } else {
            data.append(self.creationTime.int32.beData)
            data.append(self.modificationTime.int32.beData)
        }
        data.append(self.timeScale.int32.beData)
        if self.version.int8BE == 0x01 {
            data.append(self.duration.int64.beData)
        } else {
            data.append(self.duration.int32.beData)
        }
        data.append(self.languageInt16.beData)
        data.append(self.quality.int16.beData)
        return data
    }
}
