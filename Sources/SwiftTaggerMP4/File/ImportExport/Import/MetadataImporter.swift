//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/5/21.
//

import Foundation

extension Tag {
    mutating func importMetadata(location: URL) throws {
        guard let format = ImportExportFormat(rawValue: location.pathExtension.lowercased()) else {
            throw ImporterError.UnhandledFormat
        }

        if format == .json {
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([String: String].self, from: try Data(contentsOf: location))
            try parseFromStringDictionary(jsonData)
        } else {
            let stringInput = try String(contentsOf: location)
            
            if format == .csv {
                try importFromCSV(csvString: stringInput)
            }
        }
    }
    
    private mutating func parseFromStringDictionary(_ data: [String: String]) throws {
        for (key, value) in data {
            let idString = key
                .trimmingCharacters(in: .whitespacesAndNewlines)
                .lowercased()
            let valueString = value
                .trimmingCharacters(in: .whitespacesAndNewlines)
            
            if let id = StringMetadataIdentifier(rawValue: idString) {
                let atomKey = AtomKey(atomID: id)
                let atom = try StringMetadataAtom(identifier: id, stringValue: valueString)
                metadataAtoms[atomKey] = atom
            } else if let id = IntegerMetadataIdentifier(rawValue: idString) {
                let atomKey = AtomKey(atomID: id)
                
                if let int = Int(valueString) {
                    let atom = try IntegerMetadataAtom(identifier: id, intValue: int)
                    metadataAtoms[atomKey] = atom
                }
            } else if idString == "trkn" || idString == "disk" {
                let atomKey = AtomKey(idString: idString)
                
                let trimmed = valueString.trimmingCharacters(in: CharacterSet(charactersIn: "[]"))
                
                let components = trimmed.components(separatedBy: "/")
                guard let first = components.first else {
                    return
                }
                guard let firstInt = Int(first) else {
                    return
                }
                
                let part = firstInt
                var total: Int? = nil
                if let last = components.last {
                    if let int = Int(last) {
                        total = int
                    }
                }
                
                let atom = try PartAndTotalMetadataAtom(identifier: idString, part: part, total: total)
                metadataAtoms[atomKey] = atom
            } else {
                let atomKey = AtomKey.unknown(idString)
                let atom = try UnknownMetadataAtom(name: idString, stringValue: valueString.capitalized)
                metadataAtoms[atomKey] = atom
            }
        }
    }
    
    private mutating func importFromCSV(csvString: String) throws {
        let lines = csvString.components(separatedBy: .newlines)
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
            let idString = keys.first!
            let value = values.first!
            
            stringDictionary[idString] = value
            keys.removeFirst()
            values.removeFirst()
        }
        
        try parseFromStringDictionary(stringDictionary)
    }
    
    private func substituteCharactersOnImport(raw: [String]) -> [String] {
        return raw.map({$0
                .replacingOccurrences(of: ";", with: ",")
                .replacingOccurrences(of: "\\", with: "\n")
                .replacingOccurrences(of: "(P)", with: "\u{2117}")
                .replacingOccurrences(of: "(c)", with: "\u{00A9}")
            })
    }
    
    private mutating func importFromText(textString: String) throws {
        let lines = textString.components(separatedBy: .newlines)
        
        var stringDictionary = [String: String]()
        for line in lines {
            let components = line.components(separatedBy: ":")
            guard components.count >= 2 else {
                return
            }
            let preliminaryID = components.first!

            let value: String
            if components.count > 2 {
                value = components[1 ..< components.endIndex].joined(separator: ": ")
            } else {
                value = components.last!
            }

            stringDictionary[idString] = value
            try parseFromStringDictionary(stringDictionary)
        }
    }
}

enum ImporterError: Error {
    case UnhandledFormat
    case CSVIsEmptyOrCorrupt
    case CSVDataIsCorrupted
}

