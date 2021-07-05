//
//  MetadataExporter.swift
//  
//
//  Created by Nolaine Crusher on 7/4/21.
//

import Foundation

public struct MetadataExporter {
    
    public enum SaveAs: String {
        case text = "txt"
        case csv = "csv"
        case json = "json"
    }
    
    public enum KeyFormat {
        /// DEFAULT: Use the unique, four-byte code for the metadata item (ex: "\u{00A9}alb"
        ///
        /// This option is *highly* recommended if you intend to edit and then re-import the exported metadata down the line
        case useOnlyIdentifier
        /// Use the metadata item's string descriptor (ex: "ALBUM".)
        ///
        /// WARNING: This option may result in difficulties parsing the metadata when reading it back in)
        case useOnlyDescription
        /// Use both the four-byte code and string descriptor (ex: "ALBUM (\u{00A9}alb)"
        ///
        /// WARNING: This option may result in difficulties parsing the metadata when importing the metadata)
        case useIDAndDescription
    }
    
    var metadata = [(keyString: String, valueString: String)]()
    
    private let file: Mp4File
    
    public init(url: URL, format: KeyFormat = .useOnlyIdentifier) throws {
        let mp4File = try Mp4File(location: url)
        self.init(mp4File: mp4File, format: format)
    }
    
    private init(mp4File: Mp4File, format: KeyFormat) {
        self.file = mp4File
        var metadata = [(keyString: String, valueString: String)]()

        if let tag = try? mp4File.tag() {
            let atoms = tag.metadataAtoms.sorted(by: {$0.key.priority < $1.key.priority })
            for (key, atom) in atoms {
                if AtomKey.integerKeys.contains(key) {
                    let result = MetadataExporter
                        .getIntAtomString(key: key,
                                          atom: atom,
                                          format: format)
                    metadata.append(result)
                } else if AtomKey.stringKeys.contains(key) {
                    let result = MetadataExporter.getStringAtomString(
                        key: key,
                        atom: atom,
                        format: format)
                    metadata.append(result)
                } else if key == .discNumber ||
                            key == .trackNumber {
                    let result = MetadataExporter.getPoTAtomString(
                        key: key,
                        atom: atom,
                        format: format)
                    metadata.append(result)
                } else if key == .coverArt {
                    let result = MetadataExporter.getImageAtomString(
                        key: key,
                        atom: atom,
                        format: format)
                    metadata.append(result)
                }
            }
            
            for atom in tag.unknownAtoms {
                let keyString = atom.name.uppercased() + " (----)"
                let valueString = atom.stringValue
                
                metadata.append((keyString,valueString))
            }
        }
        self.metadata = metadata
    }

    private func destination(savingAs: SaveAs) -> URL {
        let fileName = file.location.fileName + "-metadata"

        return file.location
            .deletingPathExtension()
            .deletingLastPathComponent()
            .appendingPathComponent(fileName)
            .appendingPathExtension(savingAs.rawValue)
    }
    
    public func exportMetadata(
        as savingAs: SaveAs,
        separatedBy: String = ": ") throws {
        var string = """
            """
        switch savingAs {
            case .csv:
                string = formatCSV()
                try string.write(to: destination(savingAs: savingAs),
                                 atomically: true,
                                 encoding: .utf8)
            case .json:
                let data = try formatJSON()
                try data.write(to: destination(savingAs: .json))
            default:
                string = formatPlainText(separatedBy: separatedBy)
                try string.write(to: destination(savingAs: savingAs),
                                 atomically: true,
                                 encoding: .utf8)
        }
    }
    
    private func formatJSON() throws -> Data {
        var formatted = [String: String]()

        let knownAtoms = try file.tag().metadataAtoms
        for (key, atom) in knownAtoms {
            let keyString = atom.identifier

            if AtomKey.integerKeys.contains(key) {
                let result = MetadataExporter
                    .getIntAtomString(key: key,
                                      atom: atom,
                                      format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if AtomKey.stringKeys.contains(key) {
                let result = MetadataExporter.getStringAtomString(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if key == .discNumber ||
                        key == .trackNumber {
                let result = MetadataExporter.getPoTAtomString(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            } else if key == .coverArt {
                let result = MetadataExporter.getImageAtomString(
                    key: key,
                    atom: atom,
                    format: .useOnlyIdentifier)
                formatted[keyString] = result.valueString
            }
        }
        
        for atom in try file.tag().unknownAtoms {
            let keyString = atom.identifier + atom.name
            formatted[keyString] = atom.stringValue
        }
        
        let encoder = JSONEncoder()
        let data = try encoder.encode(formatted)
        return data
    }
        
    private func formatCSV() -> String {
        var string = """
            """
        let keyItems = metadata.map({$0.keyString})
        let valueItems = metadata
            .map({$0.valueString
                .replacingOccurrences(of: ",", with: ";")
                .replacingOccurrences(of: "\n", with: "\\")
                .replacingOccurrences(of: "\u{2117}", with: "(P)")
                .replacingOccurrences(of: "\u{00A9}", with: "(c)")
            })
        
        string.append(keyItems.joined(separator: ",") + "\n")
        string.append(valueItems.joined(separator: ","))
        return string
    }
    
    private func formatPlainText(separatedBy: String) -> String {
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
        
    private static func getIntAtomString(key: AtomKey,
                                         atom: Atom,
                                         format: KeyFormat) -> (keyString: String, valueString: String) {
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
    
    private static func getStringAtomString(key: AtomKey, atom: Atom, format: KeyFormat) -> (keyString: String, valueString: String) {
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
    
    private static func getPoTAtomString(key: AtomKey, atom: Atom, format: KeyFormat) -> (keyString: String, valueString: String) {

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
    
    private static func getImageAtomString(key: AtomKey, atom: Atom, format: KeyFormat) -> (keyString: String, valueString: String) {

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
