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
    
    private func destination(savingAs: ImportExportFormat) -> URL {
        let fileName = location.fileName + "-metadata"

        return location
            .deletingPathExtension()
            .deletingLastPathComponent()
            .appendingPathComponent(fileName)
            .appendingPathExtension(savingAs.rawValue)
    }
    
    public mutating func export(
        file savingAs: ImportExportFormat,
        format: DetailPreference,
        separatedBy: String = ": ",
        usingFullMetadataForCue: Bool = false) throws {
                
        var string = """
            """
        switch savingAs {
            case .csv:
                string = try formatAsCSV()
                try string.write(to: destination(savingAs: savingAs),
                                 atomically: true,
                                 encoding: .utf8)
            case .json:
                let data = try formatAsJSON()
                try data.write(to: destination(savingAs: .json))
            case .cue:
                string = formatAsCue(url: location,
                                     fullMetadata: usingFullMetadataForCue)

                try string.write(to: destination(savingAs: savingAs),
                                 atomically: true,
                                 encoding: .utf8)
            default:
                string = formatAsText(
                    separatedBy: separatedBy,
                    format: format)
                try string.write(to: destination(savingAs: savingAs),
                                 atomically: true,
                                 encoding: .utf8)
        }
    }
    
    private func getMetadataAsArray(format: DetailPreference) -> [(keyString: String, valueString: String)] {
        var metadata = [(keyString: String, valueString: String)]()
        
        let atoms = metadataAtoms.sorted(by: {$0.key.priority < $1.key.priority })
        for (key, atom) in atoms {
            if AtomKey.integerKeys.contains(key) {
                let result = getIntAtomString(key: key,
                                              atom: atom,
                                              format: format)
                metadata.append(result)
            } else if AtomKey.stringKeys.contains(key) {
                let result = getStringAtomString(
                    key: key,
                    atom: atom,
                    format: format)
                metadata.append(result)
            } else if key == .discNumber ||
                        key == .trackNumber {
                let result = getPoTAtomString(
                    key: key,
                    atom: atom,
                    format: format)
                metadata.append(result)
            } else if key == .coverArt {
                let result = getImageAtomString(
                    key: key,
                    atom: atom,
                    format: format)
                metadata.append(result)
            }
        }
        
        for atom in unknownAtoms {
            let keyString = "(----) " + atom.name.uppercased()
            let valueString = atom.stringValue
            
            metadata.append((keyString,valueString))
        }
        return metadata
    }
    
    private func getMetadataAsDictionary() throws -> [String: String] {
        var formatted = [String: String]()
        
        let knownAtoms = metadataAtoms
        for (key, atom) in knownAtoms {
            let keyString = atom.identifier
            
            if AtomKey.integerKeys.contains(key) {
                let result = getIntAtomString(key: key,
                                      atom: atom,
                                      format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if AtomKey.stringKeys.contains(key) {
                let result = getStringAtomString(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if key == .discNumber ||
                        key == .trackNumber {
                let result = getPoTAtomString(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if key == .coverArt {
                let result = getImageAtomString(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            }
        }
        
        for atom in unknownAtoms {
            let keyString = atom.name
            formatted[keyString] = atom.stringValue
        }
        
        return formatted
    }
    
    private func formatAsCue(url: URL,fullMetadata: Bool) -> String {
        var string = """
            """
        
        if let album = album {
            string.append("TITLE \"\(album)\"\n")
        }
        
        if let albumArtist = albumArtist {
            string.append("PERFORMER \"\(albumArtist)\"\n")
        }
        
        if fullMetadata {
            if let composer = composer {
                string.append("COMPOSER \"\(composer)\"\n")
            }
            var genre: String? {
                if let predefined = predefinedGenre {
                    return predefined.stringValue
                } else {
                    return customGenre
                }
            }
            
            if let isrc = isrc {
                string.append("ISRC \"\(isrc)\"\n")
            }
            
            if let genre = genre {
                string.append("GENRE \"\(genre)\"\n")
            }
            
            if let description = comment {
                string.append("MESSAGE \"\(description)\"\n")
            }
        }
        
        string.append("FILE \"\(url.lastPathComponent)\" \(url.pathExtension.uppercased())\n")
        
        var track = 1
        for chapter in chapterList {
            string.append("  TRACK \(pad: track, toWidth: 2, using: "0") AUDIO\n")
            string.append("    TITLE \"\(chapter.title)\"\n")
            string.append("    INDEX 01 \(chapter.startTime.cueTimeStamp)\n")
            
            track += 1
        }
        
        return string
    }

    private func formatAsJSON() throws -> Data {
        let dict = try getMetadataAsDictionary()
        let encoder = JSONEncoder()
        let data = try encoder.encode(dict)
        return data
    }
        
    private func formatAsCSV() throws -> String {
        var string = """
            """
        let dict = try getMetadataAsDictionary()
        let keys = dict.map({$0.key})
        let values = try substituteCharactersOnExport()
        string.append(keys.joined(separator: ",") + "\n")
        string.append(values.joined(separator: ","))
        return string
    }
    
    private func substituteCharactersOnExport() throws -> [String] {
        let dict = try getMetadataAsDictionary()
        return dict.map({$0.value                .replacingOccurrences(of: ",", with: ";")
            .replacingOccurrences(of: "\n", with: "\\")
            .replacingOccurrences(of: "\u{2117}", with: "(P)")
            .replacingOccurrences(of: "\u{00A9}", with: "(c)")
        })
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
        
    private func getIntAtomString(key: AtomKey,
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
    
    private func getStringAtomString(key: AtomKey, atom: Atom, format: DetailPreference) -> (keyString: String, valueString: String) {
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
    
    private func getPoTAtomString(key: AtomKey, atom: Atom, format: DetailPreference) -> (keyString: String, valueString: String) {

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
    
    private func getImageAtomString(key: AtomKey, atom: Atom, format: DetailPreference) -> (keyString: String, valueString: String) {

        var keyString = key.stringValue.convertCamelToUpperCase()
        var valueString = ""
        
        if let coverAtom = atom as? ImageMetadataAtom {
            
            let imageSize = coverAtom.image.size
            let imageDataCount = coverAtom.data.data.count
            let imageFormat: String
            
            if coverAtom.data.dataType == .bmp {
                imageFormat = "Image (BMP)"
            } else if coverAtom.data.dataType == .gif {
                imageFormat = "Image (GIF)"
            } else if coverAtom.data.dataType == .jpeg {
                imageFormat = "Image (JPG)"
            } else if coverAtom.data.dataType == .png {
                imageFormat = "Image (PNG)"
            } else {
                imageFormat = "Image (unknown)"
            }
            
            valueString = "\(imageFormat), \(imageSize) (\(imageDataCount) bytes)"

            let id = "covr"
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
}

enum ExporterError: Error {
    case unableToEncodeJSON
    case unableToWriteJSON
}
