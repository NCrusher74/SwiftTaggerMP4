//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation

extension Data.SubSequence {
    /// Removes and returns the first *k* bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractFirst(_ k: Int) -> Data.SubSequence {
        let extraction = self.prefix(k)
        self = self.dropFirst(k)
        return extraction
    }
    
    /// Removes the first 8 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance) and returns an integer.
    mutating func extractTo64BitInt() -> Int {
        let extraction = self.extractFirst(8)
        return extraction.toInt64
    }

    /// Removes the first 8 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance), converts the 8 bytes to double and then to int
    mutating func extractTo64BitIntViaDouble() -> Int {
        let extraction = self.extractFirst(8)
        let double = extraction.to64BitDouble
        return Int(double)
    }

    /// Removes the first 8 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance) and returns double.
    mutating func extractTo64BitDouble() -> Double {
        let extraction = self.extractFirst(8)
        return extraction.to64BitDouble
    }

    /// Removes and returns an integer from the first 4 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractTo32BitInt() -> Int {
        let extraction = self.extractFirst(4)
        return extraction.toInt32
    }
 
    /// Removes the first 4 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance), converts the 4 bytes to double and then to int
    mutating func extractTo32BitIntViaDouble() -> Int {
        let extraction = self.extractFirst(4)
        let double = extraction.to32BitDouble
        return Int(double)
    }

    /// Removes the first 4 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance) and returns double.
    mutating func extractTo32BitDouble() -> Double {
        let extraction = self.extractFirst(4)
        return extraction.to32BitDouble
    }

    /// Removes the first 2 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance), converts the 2 bytes to double and then to int
    mutating func extractTo16BitIntViaDouble() -> Int {
        let extraction = self.extractFirst(2)
        let double = extraction.to16BitDouble
        return Int(double)
    }

    /// Removes and returns an integer from the first 2 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractTo16BitInt() -> Int {
        let extraction = self.extractFirst(2)
        return extraction.toInt32
    }

    /// Removes the first 2 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance) and returns double.
    mutating func extractTo16BitDouble() -> Double {
        let extraction = self.extractFirst(2)
        return extraction.to16BitDouble
    }

    /// Removes and returns an integer from the first byte from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractTo8BitInt() -> Int {
        let extraction = self.extractFirst(1)
        return extraction.toInt8
    }

    /// Removes the first byte from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance) and returns double.
    mutating func extractTo8BitDouble() -> Double {
        let extraction = self.extractFirst(1)
        return extraction.to8BitDouble
    }

    /// Removes and returns a 64-bit unsigned integer from the first 8 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractToUInt64BE() -> UInt64 {
        let extraction = self.extractFirst(8)
        return UInt64(parsing: extraction, .bigEndian)
    }

    /// Removes and returns a 32-bit unsigned integer from the first 4 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractToUInt32BE() -> UInt32 {
        let extraction = self.extractFirst(4)
        return UInt32(parsing: extraction, .bigEndian)
    }
    
    /// Removes and returns a 16-bit unsigned integer from the first 2 bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractToUInt16BE() -> UInt16 {
        let extraction = self.extractFirst(2)
        return UInt16(parsing: extraction, .bigEndian)
    }
}
