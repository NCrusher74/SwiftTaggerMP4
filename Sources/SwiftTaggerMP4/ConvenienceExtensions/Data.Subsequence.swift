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
    
    /// Removes and returns an integer from the first *k* bytes from the subsequence (which only mutates the subsequence’s bounds, not the underlying `Data` instance).
    mutating func extractFirstToInt(_ k: Int?) -> Int {
        let extraction = self.extractFirst(k ?? 4)
        switch k {
            case 1:
                return extraction.toInt8
            case 2:
                return extraction.toInt16
            case 8:
                return extraction.toInt64
            default:
                return extraction.toInt32
        }
    }
}
