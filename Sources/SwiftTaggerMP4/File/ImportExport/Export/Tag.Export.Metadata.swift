//
//  MetadataExporter.swift
//  
//
//  Created by Nolaine Crusher on 7/4/21.
//

import Foundation

extension Tag {
    public enum DetailPreference {
        /// DEFAULT: Use the unique, four-byte code for the metadata item (ex: "\u{00A9}alb"
        ///
        /// This option is *highly* recommended if you intend to edit and then re-import the exported metadata down the line
        case useOnlyIdentifier
        /// Use the metadata item's string descriptor (ex: "ALBUM".)
        ///
        /// This is intended to be a human-readable output and not intended to be used to re-import the metadata
        case useOnlyDescription
        /// Use both the four-byte code and string descriptor (ex: "ALBUM (\u{00A9}alb)"
        ///
        /// This is intended to be a human-readable output and not intended to be used to re-import the metadata
        case useIDAndDescription
    }
    
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
        format: DetailPreference,
        separatedBy: String = ": ",
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
                string = formatAsText(
                    separatedBy: separatedBy,
                    format: format)
                try string.write(
                    to: destination(savingAs: savingAs),
                    atomically: true,
                    encoding: .utf8)
        }
    }
    
    private func getMetadataAsArray(format: DetailPreference) -> [(keyString: String, valueString: String)] {
        var metadata = [(keyString: String, valueString: String)]()
        
        let atoms = metadataAtoms.sorted(by: {$0.key.priority < $1.key.priority })
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
                let result = getUnknownAtomStrings(key: key, atom: atom, format: format)
                metadata.append(result)
            }
        }
        return metadata
    }
    
    private func getMetadataAsDictionary() throws -> [String: String] {
        var formatted = [String: String]()
        for (key, atom) in metadataAtoms
            .filter({$0.key != .coverArt}) {

            let keyString = atom.identifier
            
            if AtomKey.integerKeys.contains(key) {
                let result = getIntAtomStrings(key: key,
                                      atom: atom,
                                      format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if AtomKey.stringKeys.contains(key) {
                let result = getStringAtomStrings(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if key == .discNumber ||
                        key == .trackNumber {
                let result = getPoTAtomStrings(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else {
                let result = getUnknownAtomStrings(key: key, atom: atom, format: .useOnlyIdentifier)
                formatted[result.keyString] = result.valueString
            }
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
        
    private func formatAsText(separatedBy: String, format: DetailPreference) -> String {
        let metadata = getMetadataAsArray(format: format)
        
        var string = """
            """

        var count = 0
        let sorted = metadata.map({$0.keyString}).sorted(by: {$0.count > $1.count})
        
        if let first = sorted.first {
            count = first.count + 6
        }
        
        for (key, value) in metadata {
            var joined = ""
            if separatedBy == ": " {
                var separator = ":"
                var difference = count - key.count
                while difference > 0 {
                    separator.append(" ")
                    difference = difference - 1
                }
                joined = key+separator+value+"\n"
            } else {
                joined = key+separatedBy+value+"\n"
            }
            string.append(joined)
        }
        return string
    }
        
    private func getIntAtomStrings(key: AtomKey,
                                         atom: Atom,
                                         format: DetailPreference) -> (keyString: String, valueString: String) {
        var keyString = key.stringValue.convertCamelToUpperCase()
        var valueString = ""
        
        if let intAtom = atom as? IntegerMetadataAtom {
            valueString = "\(intAtom.intValue)"

            let id = atom.identifier
            switch format {
                case .useIDAndDescription:
                    keyString = "\(keyString) (\(id))"
                case .useOnlyIdentifier:
                    keyString = id
                case .useOnlyDescription:
                    break
            }
        }
        return (keyString, valueString)
    }
    
    private func getStringAtomStrings(key: AtomKey, atom: Atom, format: DetailPreference) -> (keyString: String, valueString: String) {
        var keyString = key.stringValue.convertCamelToUpperCase()
        var valueString = ""
        
        if let stringAtom = atom as? StringMetadataAtom {
            valueString = "\(stringAtom.stringValue)"

            let id = atom.identifier
            switch format {
                case .useIDAndDescription:
                    keyString = "\(keyString) (\(id))"
                case .useOnlyIdentifier:
                    keyString = id
                case .useOnlyDescription:
                    break
            }
        }

        return (keyString, valueString)
    }
    
    private func getPoTAtomStrings(key: AtomKey, atom: Atom, format: DetailPreference) -> (keyString: String, valueString: String) {

        var keyString = key.stringValue.convertCamelToUpperCase()
        var valueString = ""
        
        if let potAtom = atom as? PartAndTotalMetadataAtom {
            let string: String
            
            let part = potAtom.part
            if let total = potAtom.total {
                string = "[\(part)/\(total)]"
            } else {
                string = "\(part)"
            }
            
            valueString = string
            
            let id = atom.identifier
            switch format {
                case .useIDAndDescription:
                    keyString = "\(keyString) (\(id))"
                case .useOnlyIdentifier:
                    keyString = id
                case .useOnlyDescription:
                    break
            }
        }
        
        return (keyString, valueString)
    }
    
    func getUnknownAtomStrings(key: AtomKey, atom: Atom, format: DetailPreference) -> (keyString: String, valueString: String) {
        let keyString = "(----) " + key.stringValue.uppercased()
        var valueString = ""
        
        if let unknownAtom = atom as? UnknownMetadataAtom {
            valueString = "\(unknownAtom.stringValue)"
        }
        
        return (keyString, valueString)
    }
}

enum ExporterError: Error {
    case unableToEncodeJSON
    case unableToWriteJSON
}
