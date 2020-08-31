//
//  Data.swift
//  
//
//  Created by Nolaine Crusher on 6/2/20.
//

import Foundation

extension Data {
    
    /// Converts 1 byte of data to integer, assumes big endianness
    var toInt8: Int {
        let uint8 = UInt8(parsing: self, .bigEndian)
        return Int(uint8)
    }
    
    /// Converts 2 bytes of data to integer, assumes big endianness
    var toInt16: Int {
        let uint16 = UInt16(parsing: self, .bigEndian)
        return Int(uint16)
    }
    
    /// Converts 4 bytes of data to integer, assumes big endianness
    var toInt32: Int {
        let uint32 = UInt32(parsing: self, .bigEndian)
        return Int(uint32)
    }
    
    /// Converts 8 bytes of data to integer, assumes big endianness
    var toInt64: Int {
        let uint64 = UInt64(parsing: self, .bigEndian)
        return Int(uint64)
    }
    
    /// Converts 1 byte of data to UInt8, assumes big endianness
    var toUInt8: UInt8 {
        return UInt8(parsing: self, .bigEndian)
    }
    
    /// Converts 2 bytes of data to UInt16, assumes big endianness
    var toUInt16: UInt16 {
        return UInt16(parsing: self, .bigEndian)
    }
    
    /// Converts 4 bytes of data to UInt32, assumes big endianness
    var toUInt32: UInt32 {
        return UInt32(parsing: self, .bigEndian)
    }
    
    /// Converts 8 bytes of data to UInt64, assumes big endianness
    var toUInt64: UInt64 {
        UInt64(parsing: self, .bigEndian)
    }
    
    /// Converts data to ASCII-encoded string with no null terminator
    var toStringASCII: String? {
        return String(data: self, encoding: .ascii)
    }
    
    /// Converts data to UTF8-encoded string with no null terminator
    var toStringUtf8: String? {
        return String(data: self, encoding: .utf8)
    }
    
    /// Converts data to ISOLatin1-encoded string with no null terminator
    var toStringISO88591: String? {
        return String(data: self, encoding: .isoLatin1)
    }
    
    mutating func extractAsStringUntilNullTermination() -> String {
        var remainder = self
        search: while let null = remainder.firstIndex(of: 0) {
            remainder = self[null...].dropFirst()
        }
        
        var stringBytes: Data.SubSequence
        if remainder.startIndex == self.startIndex {
            // No null found.
            stringBytes = self
            self = self[self.endIndex...]
        } else {
            // Null found.
            stringBytes = self[..<remainder.startIndex]
            self = remainder
            stringBytes = stringBytes.dropLast()
        }
        return String(decoding: Data(stringBytes), as: UTF8.self)

    }
}
