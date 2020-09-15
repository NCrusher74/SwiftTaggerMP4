/*
  Data.SubSequence.Parsing.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation

extension Data.SubSequence {
    
    /// Extracts 4 bytes and converts to integer (assumes big endian)
    ///
    /// The first four bytes of an atom are always its size
    mutating func extractAtomSize() -> Int {
        return self.extractToInt(4)
    }
    /// Extracts 4 bytes and converts to a `ISO-8859-1`-encoded string
    ///
    /// The second four bytes of an atom are always it's identifier
    mutating func extractAtomID() -> String? {
        let extraction = self.extractFirst(4)
        let string = String(data: extraction, encoding: .isoLatin1)
        return string
    }
    
    /// Extracts atoms from a parent-atom's content data and determines how it will be handled based upon its identifier
    internal mutating func extractAndParseToAtom() throws -> Atom? {
        let preliminarySize = extractAtomSize()
        guard let atomID = extractAtomID() else {
            return nil
        }
        var size = Int()
        var payload = Data()
        if preliminarySize == 0 {
            payload = self
            size = self.count + 8
        } else if preliminarySize == 1 {
            // if used, the extendedSizeData comes after the idData
            size = self.extractToInt(8)
            payload = self.extractFirst(size - 16)
        } else {
            size = preliminarySize
            payload = self.extractFirst(size - 8)
        }
        
        if let identifier = AtomIdentifier(rawValue: atomID) {
            return try identifier.parse(size: size,
                                        payload: payload)
        } else if let identifier = TrackReferenceType(rawValue: atomID) {
            return try identifier.parse(size: size,
                                        payload: payload)
        } else if let identifier = DataReferenceType(rawValue: atomID) {
            return try identifier.parse(size: size,
                                        payload: payload)
        } else if let identifier =
            IntegerMetadataIdentifier(rawValue: atomID) {
            return try identifier.parse(size: size,
                                        payload: payload)
        } else if let identifier =
            StringMetadataIdentifier(rawValue: atomID) {
            return try identifier.parse(size: size,
                                        payload: payload)
        } else if atomID == "covr" {
            return try ImageMetadataAtom(identifier: atomID,
                                     size: size,
                                     payload: payload)
        } else if atomID == "trkn" || atomID == "disk" {
            return try PartAndTotalMetadataAtom(identifier: atomID,
                                                size: size,
                                                payload: payload)
        } else if atomID == "----" {
            return try UnknownMetadataAtom(identifier: atomID,
                                           size: size,
                                           payload: payload)
        } else {
            return try PassThrough(identifier: atomID,
                                   size: size,
                                   payload: payload)
        }
    }
}
