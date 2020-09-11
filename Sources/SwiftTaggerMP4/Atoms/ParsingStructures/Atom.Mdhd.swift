/*
  Mdhd.swift


  Created by Nolaine Crusher on 7/2/20.
*/

import Foundation
import SwiftLanguageAndLocaleCodes

/// A class representing a `mdhd` atom in an `Mp4File`'s atom structure
class Mdhd: Atom {
    // contentData count should be a total of 24 bytes
    private var version: Data
    private var flags: Data
    var creationTime: Int
    var modificationTime: Int
    var timeScale: Double
    var duration: Double
    private var languageInt16: Int16
    var quality: Int
    
    /// Initialize a `mdhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        if self.version.int8BE == 0x01 {
            self.creationTime = data.extractFirst(8).int64BE.toInt
            self.modificationTime = data.extractFirst(8).int64BE.toInt
        } else {
            self.creationTime = data.extractFirst(4).int32BE.toInt
            self.modificationTime = data.extractFirst(4).int32BE.toInt
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
    
    static func getLanguage(from elng: Elng) -> ISO6392Code {
        var languageFromElng: ISO6392Code = .und
        let language = elng.language
        let langComponents: [String] = language.components(separatedBy: "_")
        if let langString: String = langComponents.first {
            if let language6392 = ISO6392Code(iso6391Code: langString) {
                languageFromElng = language6392
            } else if let language6392 = ISO6392Code(rawValue: langString) {
                languageFromElng = language6392
            } else {
                languageFromElng = .und
            }
        }
        return languageFromElng
    }
    
    var language: ISO6392Code? {
        get {
            // first see if there's an extended language tag
            var elng: Elng? = nil
            if let siblings = self.siblings {
                elng = siblings.first(where: {$0.identifier == "elng"}) as? Elng
            }

            // if there is, it overrides anything in the language here
            if elng != nil {
                var languageFromElng: ISO6392Code = .und
                if let language = elng?.language {
                    let langComponents: [String] = language.components(separatedBy: "_")
                    if let langString: String = langComponents.first {
                        if let language6392 = ISO6392Code(iso6391Code: langString) {
                            languageFromElng = language6392
                        } else if let language6392 = ISO6392Code(rawValue: langString) {
                            languageFromElng = language6392
                        } else {
                            languageFromElng = .und
                        }
                    }
                }
                return languageFromElng
            } else {
                // see if it's a uInt16 form of the 3-character code
                if let languageCode = ISO6392Code(fromInt16: languageInt16) {
                    return languageCode
                    // otherwise see if it works with a quicktime code
                } else if let languageCode = ISO6392Code(
                    quicktimeCode: Int(languageInt16)) {
                    return languageCode
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
                if let elngLanguage = elng?.language {
                    if let isoLanguage = ISO6392Code(iso6391Code: elngLanguage) {
                        self.languageInt16 = isoLanguage.getInt16Code()
                    } else if let isoLanguage = ISO6392Code(rawValue: elngLanguage) {
                        self.languageInt16 = isoLanguage.getInt16Code()
                    }
                }
            } else {
                if let newValue = newValue {
                    self.languageInt16 = newValue.getInt16Code()
                }
            }
        }
    }
    
    /// Initialize a `mdhd` atom from a duration and language for use in a CHAPTER TRAK ONLY
    @available(OSX 10.12, *)
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
    
    /// **CHAPTER TRACK ONLY** Initialize a `mdhd` atom from a duration and `elng` atom for use in a Chapter track
    @available(OSX 10.12, *)
    init(elng: Elng, moov: Moov) throws {
        let isoCode = Mdhd.getLanguage(from: elng)
        
        self.version = Atom.version
        self.flags = Atom.flags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        
        self.timeScale = 1000
        self.duration = moov.mvhd.duration / moov.mvhd.timeScale * 1000
        self.languageInt16 = isoCode.getInt16Code()
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
