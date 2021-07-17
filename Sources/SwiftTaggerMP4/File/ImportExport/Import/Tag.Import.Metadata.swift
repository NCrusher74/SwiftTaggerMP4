//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/5/21.
//

import Foundation
import iTunesGenreID

extension Tag {
    /// Import metadata from a .csv or .json file
    mutating func importMetadata(location: URL) throws {
        guard let format = MetadataExportFormat(rawValue: location.pathExtension.lowercased()) else {
            print("Cannot import metadata; invalid format")
            return
        }
        
        if format == .json {
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([String: String].self, from: try Data(contentsOf: location))
            try parseStringDictionary(jsonData)
        } else if format == .csv {
            let stringInput = try String(contentsOf: location)
            try importFromCSV(string: stringInput)
        } else {
            let stringInput = try String(contentsOf: location)
            try importFromText(string: stringInput)
        }
    }
    
    private mutating func importFromText(string: String) throws {
        var lines = string.components(separatedBy: .newlines)
        lines = lines.filter({$0.hasPrefix("(")})
        
        var stringDictionary = [String: String]()
        while !lines.isEmpty {
            let line = lines.extractFirst()
            var components = line.components(separatedBy: ":")
            guard components.count >= 2 else {
                continue
            }
            
            let keyString = components.extractFirst()
            var valueString = String()
            
            if components.count > 1 {
                valueString = components.joined(separator: ":")
            } else {
                valueString = components.extractFirst()
            }
            
            stringDictionary[keyString] = valueString
        }
        try parseStringDictionary(stringDictionary)
    }
    
    private mutating func importFromCSV(string: String) throws {
        let lines = string.components(separatedBy: .newlines)
        guard lines.count == 2 else {
            throw ImporterError.CSVIsEmptyOrCorrupt
        }
        
        let keyLine = lines.first!
        let valueLine = lines.last!
        
        var keys = keyLine.components(separatedBy: ",")
        let valuesRaw = valueLine.components(separatedBy: ",")
        var values = substituteCharactersOnImport(raw: valuesRaw)
        
        guard keys.count == values.count else {
            throw ImporterError.CSVDataIsCorrupted
        }
        
        var stringDictionary = [String: String]()
        while !keys.isEmpty {
            let idString = keys.extractFirst()
            var value = values.extractFirst()
            
            if idString == "keyw" || idString == "\u{00A9}ark" || idString == "\u{00A9}prk" || idString == "\u{00A9}cok" || idString == "\u{00A9}pdk" || idString == "\u{00A9}swk" || idString == "\u{00A9}snk" || idString == "\u{00A9}nak" {
                value = value.replacingOccurrences(of: ",", with: ";")
            }
            
            stringDictionary[idString] = value
        }
        
        try parseStringDictionary(stringDictionary)
    }
    
    private func substituteCharactersOnImport(raw: [String]) -> [String] {
        return raw.map({$0
            .replacingOccurrences(of: ";", with: ",")
            .replacingOccurrences(of: "\\", with: "\n")
            .replacingOccurrences(of: "(P)", with: "\u{2117}")
            .replacingOccurrences(of: "(c)", with: "\u{00A9}")
        })
    }
    
    private mutating func parseStringDictionary(_ data: [String: String]) throws {
        for (key, value) in data {
            let valueString = value
                .trimmingCharacters(in: .whitespacesAndNewlines)

            let known = AtomKey(keyString: key)
            
            if let stringID = StringMetadataIdentifier(key: known) {
                importStringAtom(key: known, id: stringID, stringValue: valueString)
            } else if let intID = IntegerMetadataIdentifier(key: known) {
                importIntegerAtom(key: known, id: intID, stringValue: valueString)
            } else if known == .discNumber || known == .trackNumber {
                importPoTAtom(key: known, stringValue: valueString)
            } else {
                importUnknownAtom(keyString: key, stringValue: valueString)
            }
        }
    }
    
    private mutating func importPoTAtom(key: AtomKey, stringValue: String) {
        let trimmed = stringValue.trimmingCharacters(in: CharacterSet(charactersIn: "[]"))
        let components = trimmed.components(separatedBy: "/")
        
        guard let first = components.first else {
            return
        }
        guard let firstInt = Int(first) else {
            return
        }
        
        let lastInt: Int?
        if components.count > 1 {
            if let last = components.last {
                if let int = Int(last) {
                    lastInt = int
                } else {
                    lastInt = nil
                }
            } else {
                lastInt = nil
            }
        } else {
            lastInt = nil
        }
        
        let id: String
        if key == .discNumber {
            id = "disk"
        } else if key == .trackNumber {
            id = "trkn"
        } else {
            return
        }
        
        if let atom = try? PartAndTotalMetadataAtom(identifier: id, part: firstInt, total: lastInt) {
            metadataAtoms[key] = atom
        }
    }
    
    private mutating func importIntegerAtom(
        key: AtomKey,
        id: IntegerMetadataIdentifier,
        stringValue: String) {
        if key == .compilation ||
            key == .gaplessPlayback ||
            key == .podcast ||
            key == .showWorkAndMovement {

            let intValue: Int
            if stringValue == "True" {
                intValue = 1
            } else {
                intValue = 0
            }

            if let atom = try? IntegerMetadataAtom(identifier: id, intValue: intValue) {
                metadataAtoms[key] = atom
            }
        }
        if let int = Int(stringValue) {
            if let atom = try? IntegerMetadataAtom(identifier: id, intValue: int) {
                metadataAtoms[key] = atom
            }
        }
    }
    
    private mutating func importStringAtom(
        key: AtomKey,
        id: StringMetadataIdentifier,
        stringValue: String) {
        if let atom = try? StringMetadataAtom(identifier: id, stringValue: stringValue) {
            metadataAtoms[key] = atom
        }
    }
    
    private mutating func importUnknownAtom(keyString: String, stringValue: String) {
        var keyString = keyString
        _ = keyString.extractFirst(6)
        let name = keyString.trimmingCharacters(in: .whitespacesAndNewlines)

        if let atom = try? UnknownMetadataAtom(name: name, stringValue: stringValue) {
            metadataAtoms[.unknown(name)] = atom
        }
    }
    
    mutating func parseMetadataFromCue(_ header: String) {
        var lines = header.components(separatedBy: .newlines)
            .map({$0.trimmingCharacters(in: .whitespaces)})
        
        let recognized = ["TITLE", "PERFORMER", "GENRE", "COMPOSER", "ISRC", "MESSAGE"]
        while !lines.isEmpty {
            let line = lines.extractFirst()

            if line.hasPrefix("FILE") {
                continue
            } else if line.hasPrefix("REM") {
                attemptMetadataFromRemark(line)
            } else {                
                for item in recognized {
                    if line.hasPrefix(item) {
                        let trimmed = line.dropFirst(item.count)
                            .trimmingCharacters(in: .whitespacesAndNewlines)
                            .trimmingCharacters(in: CharacterSet(charactersIn: "\""))
                        
                        switch item {
                            case "TITLE":
                                self.album = trimmed
                            case "PERFORMER":
                                self.albumArtist = trimmed
                            case "COMPOSER":
                                self.composer = trimmed
                            case "ISRC":
                                self.isrc = trimmed
                            case "MESSAGE":
                                self.comment = trimmed
                            case "GENRE":
                                if let predefined = Genre(stringValue: trimmed) {
                                    self.predefinedGenre = predefined
                                } else {
                                    self.customGenre = trimmed
                                }
                            default: continue
                        }
                    }
                }
            }
        }
    }
    
    private mutating func attemptMetadataFromRemark(_ line: String) {
        var line = line
        if let distance = line.distance(of: "\"") {
            let remark = line
                .extractFirst(distance)
                .trimmingCharacters(in: .whitespaces)
            let key = AtomKey(keyString: remark)

            let metadataString = line
                .trimmingCharacters(
                    in: CharacterSet(charactersIn: "\""))
                .trimmingCharacters(
                    in: .whitespacesAndNewlines)

            
            if AtomKey.stringKeys.contains(key) {
                guard let id = StringMetadataIdentifier(key: key) else { return }
                importStringAtom(key: key, id: id, stringValue: metadataString)
            } else if AtomKey.integerKeys.contains(key) {
                guard let id = IntegerMetadataIdentifier(key: key) else { return }
                
                importIntegerAtom(key: key, id: id, stringValue: metadataString)
            } else if key == .discNumber || key == .trackNumber {
                importPoTAtom(key: key, stringValue: metadataString)
            } else {
                importUnknownAtom(keyString: key.capitalizedStringValue, stringValue: metadataString)
            }
        }
    }
}

enum ImporterError: Error {
    case UnhandledFormat
    case CSVIsEmptyOrCorrupt
    case CSVDataIsCorrupted
    case InvalidChapterData
    case PossibleCountMismatch
    case InvalidOggChapterContent
}

