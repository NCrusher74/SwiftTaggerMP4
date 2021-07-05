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
    
    var metadata = [(keyString: String, valueString: String)]()
    
    private let file: Mp4File
    
    init(mp4File: Mp4File, useAtomID: Bool = false) {
        self.file = mp4File
        var metadata = [(keyString: String, valueString: String)]()

        if let tag = try? mp4File.tag() {
            let atoms = tag.metadataAtoms.sorted(by: {$0.key.priority < $1.key.priority })
            for (key, atom) in atoms {
                if AtomKey.integerKeys.contains(key) {
                    let result = MetadataExporter
                        .getIntAtomString(key: key,
                                          atom: atom,
                                          withID: useAtomID)
                    metadata.append(result)
                } else if AtomKey.stringKeys.contains(key) {
                    let result = MetadataExporter.getStringAtomString(
                        key: key,
                        atom: atom,
                        withID: useAtomID)
                    metadata.append(result)
                } else if key == .discNumber ||
                            key == .trackNumber {
                    let result = MetadataExporter.getPoTAtomString(
                        key: key,
                        atom: atom,
                        withID: useAtomID)
                    metadata.append(result)
                } else if key == .coverArt {
                    let result = MetadataExporter.getImageAtomString(
                        key: key,
                        atom: atom,
                        withID: useAtomID)
                    metadata.append(result)
                }
            }
            
            for atom in tag.unknownAtoms {
                let keyString = atom.name.uppercased()
                let valueString = atom.stringValue
                
                metadata.append((keyString, valueString))
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
    
    public func exportMetadataText(
        savingAs: SaveAs,
        separatedBy: String = ": ") throws {
        var string = """
            """
        switch savingAs {
            case .csv:
                string = formatCSV()
            default:
                string = formatPlainText(separatedBy: separatedBy)
        }
        
        try string.write(to: destination(savingAs: savingAs),
                         atomically: true,
                         encoding: .utf8)
    }
    
    private func formatCSV() -> String {
        var string = """
            """
        let keyItems = metadata.map({$0.keyString})
        let valueItems = metadata.map({$0.valueString.replacingOccurrences(of: ",", with: "\\")})
        
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
                                         withID: Bool) -> (keyString: String, valueString: String) {
        var keyString = key.stringValue.convertCamelToUpperCase()
        var valueString = ""
        
        if let intAtom = atom as? IntegerMetadataAtom {
            valueString = "\(intAtom.intValue)"

            if withID {
                let id = IntegerMetadataIdentifier(key: key)?.rawValue ?? "unknown"
                
                keyString = "\(keyString) (\(id))"
            }
        }
        return (keyString, valueString)
    }
    
    private static func getStringAtomString(key: AtomKey, atom: Atom, withID: Bool) -> (keyString: String, valueString: String) {
        var keyString = key.stringValue.convertCamelToUpperCase()
        var valueString = ""
        
        if let stringAtom = atom as? StringMetadataAtom {
            valueString = "\(stringAtom.stringValue)"

            if withID {
                let id = StringMetadataIdentifier(key: key)?.rawValue ?? "unknown"
                
                keyString = "\(keyString) (\(id))"
            }
        }
        return (keyString, valueString)
    }
    
    private static func getPoTAtomString(key: AtomKey, atom: Atom, withID: Bool) -> (keyString: String, valueString: String) {

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
            
            if withID {
                let id: String
                if key == .discNumber {
                    id = "disk"
                } else {
                    id = "trkn"
                }
                
                keyString = "\(keyString) (\(id))"
            }
        }
        
        return (keyString, valueString)
    }
    
    private static func getImageAtomString(key: AtomKey, atom: Atom, withID: Bool) -> (keyString: String, valueString: String) {

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

            if withID {
                let id = "covr"
                
                keyString = "\(keyString) (\(id))"
            }
        }
        return (keyString, valueString)
    }
}
