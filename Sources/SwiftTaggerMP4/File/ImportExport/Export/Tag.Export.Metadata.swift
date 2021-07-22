//
//  MetadataExporter.swift
//  
//
//  Created by Nolaine Crusher on 7/4/21.
//

import Foundation

extension Tag {    
    private func destination(savingAs: MetadataExportFormat) -> URL {
        let fileName = location.fileName

        return location
            .deletingPathExtension()
            .deletingLastPathComponent()
            .appendingPathComponent(fileName)
            .appendingPathExtension(savingAs.rawValue)
    }
    
    public mutating func exportMetadata(
        file savingAs: MetadataExportFormat,
        usingFullMetadataForCue: Bool = false) throws {
                
        var string = """
            """
        switch savingAs {
            case .csv:
                string = try formatAsCSV()
                try string.write(
                    to: destination(savingAs: savingAs),
                    atomically: true,
                    encoding: .utf8)
            case .json:
                let data = try formatAsJSON()
                try data.write(to: destination(savingAs: .json))
            default:
                string = formatAsText()
                try string.write(
                    to: destination(savingAs: savingAs),
                    atomically: true,
                    encoding: .utf8)
        }
    }
    
    private func getMetadataAsArray(format: MetadataExportFormat) -> [(keyString: String, valueString: String)] {
        var metadata = [(keyString: String, valueString: String)]()

        let atoms = metadataAtoms.sorted(by: {$0.key.priority < $1.key.priority }).filter({$0.key != .coverArt})

        for (key, atom) in atoms {
            if AtomKey.integerKeys.contains(key) {
                let result = getIntAtomStrings(key: key,
                                              atom: atom,
                                              format: format)
                metadata.append(result)
            } else if AtomKey.stringKeys.contains(key) {
                let result = getStringAtomStrings(
                    key: key,
                    atom: atom,
                    format: format)
                metadata.append(result)
            } else if key == .discNumber ||
                        key == .trackNumber {
                let result = getPoTAtomStrings(
                    key: key,
                    atom: atom,
                    format: format)
                metadata.append(result)
            } else {
                let result = getUnknownAtomStrings(key: key, atom: atom)
                metadata.append(result)
            }
        }

        return metadata
    }
    
    private func getMetadataAsDictionary() throws -> [String: String] {
        var formatted = [String: String]()
        for (key, value) in getMetadataAsArray(format: .json) {
            formatted[key] = value
        }
        return formatted
    }
    
    private func formatAsJSON() throws -> Data {
        let dict = try getMetadataAsDictionary()
        let encoder = JSONEncoder()
        let data = try encoder.encode(dict)
        return data
    }
        
    private func formatAsCSV() throws -> String {
        var keyString = ""
        var valueString = ""
        
        let dict = try getMetadataAsDictionary()
        for (key, value) in dict {
            keyString.append(key + ",")
            let corrected = value
                .replacingOccurrences(of: ",", with: ";")
                .replacingOccurrences(of: "\n", with: "\\")
                .replacingOccurrences(of: "\u{2117}", with: "(P)")
                .replacingOccurrences(of: "\u{00A9}", with: "(c)")
            valueString.append(corrected + ",")
        }
        
        keyString = keyString.trimmingCharacters(in: CharacterSet(charactersIn: ","))
        valueString = valueString.trimmingCharacters(in: CharacterSet(charactersIn: ","))
        
        let string = keyString + "\n" + valueString
        return string
    }
        
    private func formatAsText() -> String {
        let metadata = getMetadataAsArray(format: .text)
        
        var string = """
            """

        var count = 0
        let sorted = metadata.map({$0.keyString}).sorted(by: {$0.count > $1.count})
        
        if let first = sorted.first {
            count = first.count + 6
        }
        
        for (key, value) in metadata {
            let difference = count - key.count
            let separator = ":".padRight(difference)
            let joined = key + separator + value + "\n"
            string.append(joined)
        }
        return string
    }
    
    private func getIntAtomStrings(key: AtomKey,
                                         atom: Atom,
                                         format: MetadataExportFormat) -> (keyString: String, valueString: String) {
        var keyString = key.keyString(format: format)
        var valueString = String()
        
        if let intAtom = atom as? IntegerMetadataAtom {
            valueString = intAtom.valueString
        }
        
        keyString = cleanString(keyString: keyString)
        return (keyString, valueString)
    }
    
    private func cleanString(keyString: String) -> String {
        var keyString = keyString
        keyString = keyString.replacingOccurrences(of: " I D", with: " ID")
        keyString = keyString.replacingOccurrences(of: "I TUNES", with: "ITUNES")
        return keyString
    }
    
    private func getStringAtomStrings(key: AtomKey, atom: Atom, format: MetadataExportFormat) -> (keyString: String, valueString: String) {
        var keyString = key.keyString(format: format)
        var valueString = String()
        
        if let stringAtom = atom as? StringMetadataAtom {
            valueString = stringAtom.stringValue
        }
        
        keyString = cleanString(keyString: keyString)
        return (keyString, valueString)
    }
    
    private func getPoTAtomStrings(key: AtomKey, atom: Atom, format: MetadataExportFormat) -> (keyString: String, valueString: String) {

        let keyString = key.keyString(format: format)
        var valueString = String()
        
        if let potAtom = atom as? PartAndTotalMetadataAtom {
            valueString = potAtom.valueString
        }
        
        return (keyString, valueString)
    }
    
    private func getUnknownAtomStrings(key: AtomKey, atom: Atom) -> (keyString: String, valueString: String) {
        let keyString = "(----) " + key.stringValue
        var valueString = String()
        
        if let unknownAtom = atom as? UnknownMetadataAtom {
            valueString = unknownAtom.stringValue
        }
        
        return (keyString, valueString)
    }
}

enum ExporterError: Error {
    case unableToEncodeJSON
    case unableToWriteJSON
}
