//
//  MetadataExporter.swift
//  
//
//  Created by Nolaine Crusher on 7/4/21.
//

import Foundation

public struct MetadataExporter {
    
    let file: Mp4File
    
    private var tag: Tag? {
        if let tag = try? file.tag() {
            return tag
        } else {
            return nil
        }
    }
    
    private var destination: URL {
        let fileName = file.location.fileName + "-metadata"
        
        return file.location
            .deletingPathExtension()
            .deletingLastPathComponent()
            .appendingPathComponent(fileName)
            .appendingPathExtension("txt")
    }
    
    public func exportMetadataText(withID: Bool) throws {
        let string = generateMetadataText(withID: withID)
        try string.write(to: destination,
                      atomically: true,
                      encoding: .utf8)
    }
    
    private func generateMetadataText(withID: Bool) -> String {
        var result = """
"""
        if let tag = tag {
            for (key, atom) in tag.metadataAtoms {
                if AtomKey.integerKeys.contains(key) {
                    if let string = getIntAtomString(
                        key: key,
                        atom: atom,
                        withID: withID) {
                        result.append(string)
                    }
                } else if AtomKey.stringKeys.contains(key) {
                    if let string = getStringAtomString(
                        key: key,
                        atom: atom,
                        withID: withID) {
                        result.append(string)
                    }
                } else if key == .discNumber || key == .trackNumber {
                    if let string = getPoTAtomString(
                        key: key,
                        atom: atom,
                        withID: withID) {
                        result.append(string)
                    }
                } else if key == .coverArt {
                    if let string = getImageAtomString(
                        key: key,
                        atom: atom,
                        withID: withID) {
                        result.append(string)
                    }
                }
            }
            
            for atom in tag.unknownAtoms {
                let keyString = "---- \(atom.name)"
                let valueString = atom.stringValue
                
                result.append("\(keyString): \(valueString)\n")
            }
        }
        
        return result
    }
    
//    func exportMetadataCSV(withID: Bool) -> String {
//        
//    }
    
    private func getIntAtomString(key: AtomKey, atom: Atom, withID: Bool) -> String? {
        let keyString = key.stringValue.convertCamelToUpperCase()

        if let intAtom = atom as? IntegerMetadataAtom {
            let valueString = "\(intAtom.intValue)"
            if withID {
                let id = IntegerMetadataIdentifier(key: key)?.rawValue ?? "unknown"
                
                return "\(keyString) (\(id)): \(valueString)\n"
            } else {
                return "\(keyString): \(valueString)\n"
            }
        } else {
            return nil
        }
    }
    
    private func getStringAtomString(key: AtomKey, atom: Atom, withID: Bool) -> String? {
        let keyString = key.stringValue.convertCamelToUpperCase()

        if let stringAtom = atom as? StringMetadataAtom {
            let valueString = "\(stringAtom.stringValue)"

            if withID {
                let id = StringMetadataIdentifier(key: key)?.rawValue ?? "unknown"
                
                return "\(keyString) (\(id)): \(valueString)\n"
            } else {
                return "\(keyString): \(valueString)\n"
            }
        } else {
            return nil
        }
    }
    
    private func getPoTAtomString(key: AtomKey, atom: Atom, withID: Bool) -> String? {
        if let potAtom = atom as? PartAndTotalMetadataAtom {
            let keyString = key.stringValue.convertCamelToUpperCase()

            let valueString: String
            
            let part = potAtom.part
            if let total = potAtom.total {
                valueString = "[\(part)/\(total)]"
            } else {
                valueString = "\(part)"
            }
            
            if withID {
                let id: String
                if key == .discNumber {
                    id = "disk"
                } else {
                    id = "trkn"
                }
                
                return "\(keyString) (\(id)): \(valueString)\n"
            } else {
                return "\(keyString): \(valueString)\n"
            }
        } else {
            return nil
        }
    }
    
    private func getImageAtomString(key: AtomKey, atom: Atom, withID: Bool) -> String? {
        if let coverAtom = atom as? ImageMetadataAtom {
            let keyString = key.stringValue.convertCamelToUpperCase()
            
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
            
            if withID {
                let id = "covr"
                
                return "\(keyString) (\(id)): \(imageFormat), \(imageSize) (\(imageDataCount) bytes)\n"
            } else {
                return "\(keyString): \(imageFormat), \(imageSize) (\(imageDataCount) bytes)\n"
            }
        } else {
            return nil
        }
    }
}
