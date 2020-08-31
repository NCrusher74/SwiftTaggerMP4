//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/2/20.
//

import Foundation

/// A class representing a `mdhd` atom in an `Mp4File`'s atom structure
class Mdhd: Atom {
    // contentData count should be a total of 24 bytes
    private var versionAndFlags: Data
    var creationTime: UInt32
    var modificationTime: UInt32
    var timeScale: Int
    var duration: Int
    private var languageUInt16: UInt16
    var quality: Int
    
    /// Initialize a `mdhd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        guard data.count == 24 else {
            throw Mp4File.Error.InvalidMediaHeaderData
        }
        
        self.versionAndFlags = data.extractFirst(4)
        self.creationTime = data.extractToUInt32BE()
        self.modificationTime = data.extractToUInt32BE()
        let preliminaryTimeScale = data.extractTo32BitDouble()
        let preliminaryDuration = data.extractTo32BitDouble()
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
        self.languageUInt16 = data.extractToUInt16BE()
        self.quality = data.extractTo16BitInt()
        
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
                if let languageCode = ISO6392Code(fromUInt16: languageUInt16) {
                    return languageCode
                    // otherwise see if it works with a quicktime code
                } else if let languageCode = ISO6392Code(
                    quicktimeCode: Int(languageUInt16)) {
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
                        self.languageUInt16 = isoLanguage.getUInt16Code()
                    } else if let isoLanguage = ISO6392Code(rawValue: elngLanguage) {
                        self.languageUInt16 = isoLanguage.getUInt16Code()
                    }
                }
            } else {
                if let newValue = newValue {
                    self.languageUInt16 = newValue.getUInt16Code()
                }
            }
        }
    }
    
    /// Initialize a `mdhd` atom from a duration and language for use in a CHAPTER TRAK ONLY
    @available(OSX 10.12, *)
    init(mvhdDuration: Int, language: ISO6392Code) throws {
        self.versionAndFlags = Atom.versionAndFlags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.timeScale = Mp4File.timeScale
        self.duration = Mp4File.duration
        self.languageUInt16 = language.getUInt16Code()
        self.quality = 0
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(self.creationTime.beData)
        payload.append(self.modificationTime.beData)
        payload.append(self.timeScale.beDataFrom32BitInt)
        payload.append(self.duration.beDataFrom32BitInt)
        payload.append(self.languageUInt16.beData)
        payload.append(self.quality.beDataFrom16BitInt)
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
        
        self.versionAndFlags = Atom.versionAndFlags
        self.creationTime = Date().dateIntervalSince1904
        self.modificationTime = Date().dateIntervalSince1904
        self.timeScale = Mp4File.timeScale
        self.duration = Mp4File.duration
        self.languageUInt16 = isoCode.getUInt16Code()
        self.quality = 0
        
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(self.creationTime.beData)
        payload.append(self.modificationTime.beData)
        payload.append(self.timeScale.beDataFrom32BitInt)
        payload.append(self.duration.beDataFrom32BitInt)
        payload.append(self.languageUInt16.beData)
        payload.append(self.quality.beDataFrom16BitInt)
        guard payload.count == 24 else { fatalError("Byte count is \(payload.count). A valid mdhd atom requires 24 bytes of content plus the header data.")
        }
        
        try super.init(identifier: "mdhd",
                       size: payload.count + 8,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.creationTime.beData)
        data.append(self.modificationTime.beData)
        data.append(self.timeScale.beDataFrom32BitInt)
        data.append(self.duration.beDataFrom32BitInt)
        data.append(self.languageUInt16.beData)
        data.append(self.quality.beDataFrom16BitInt)
        return data
    }
}
