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
    var creationTime: Int32
    var modificationTime: Int32
    var timeScale: Int
    var duration: Int
    private var languageInt16: Int16
    var quality: Int
    
    /// Initialize a `mdhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        guard data.count == 24 else {
            throw Mp4File.Error.InvalidMediaHeaderData
        }
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)

        self.creationTime = data.extractFirst(4).int32BE
        self.modificationTime = data.extractFirst(4).int32BE
        let preliminaryTimeScale = data.extractToDouble(4)
        let preliminaryDuration = data.extractToDouble(4)
        if preliminaryTimeScale == 1000 {
            // duration is already in milliseconds, no need to calculate
            self.duration = Int(preliminaryDuration)
        } else {
            // divide the raw duration by the timescale to get the time in seconds
            let durationInSeconds: Double = preliminaryDuration / preliminaryTimeScale
            // multiply the duration in seconds by 1000 to get milliseconds
            self.duration = Int(durationInSeconds * 1000)
        }
        self.timeScale = Int(preliminaryTimeScale)
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
    init(mvhdDuration: Int, language: ISO6392Code) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.timeScale = Mp4File.timeScale
        self.duration = Mp4File.duration
        self.languageInt16 = language.getInt16Code()
        self.quality = 0
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(self.creationTime.beData)
        payload.append(self.modificationTime.beData)
        payload.append(self.timeScale.int32.beData)
        payload.append(self.duration.int32.beData)
        payload.append(self.languageInt16.beData)
        payload.append(self.quality.int16.beData)
        guard payload.count == 24 else { fatalError("Byte count is \(payload.count). A valid mdhd atom requires 24 bytes of content plus the header data.")
        }
        
        try super.init(identifier: "mdhd",
                       size: payload.count + 8,
                       payload: payload)
    }
    
    /// Initialize a `mdhd` atom from a duration and `elng` atom for use in a CHAPTER TRAK ONLY
    @available(OSX 10.12, *)
    init(mvhdDuration: Int, elng: Elng) throws {
        let isoCode = Mdhd.getLanguage(from: elng)
        
        self.version = Atom.version
        self.flags = Atom.flags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.timeScale = Mp4File.timeScale
        self.duration = Mp4File.duration
        self.languageInt16 = isoCode.getInt16Code()
        self.quality = 0
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(self.creationTime.beData)
        payload.append(self.modificationTime.beData)
        payload.append(self.timeScale.int32.beData)
        payload.append(self.duration.int32.beData)
        payload.append(self.languageInt16.beData)
        payload.append(self.quality.int16.beData)
        guard payload.count == 24 else { fatalError("Byte count is \(payload.count). A valid mdhd atom requires 24 bytes of content plus the header data.")
        }
        
        try super.init(identifier: "mdhd",
                       size: payload.count + 8,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.creationTime.beData)
        data.append(self.modificationTime.beData)
        data.append(self.timeScale.int32.beData)
        data.append(self.duration.int32.beData)
        data.append(self.languageInt16.beData)
        data.append(self.quality.int16.beData)
        return data
    }
}
