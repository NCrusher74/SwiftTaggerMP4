/*
  File 2.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

//import Foundation
extension Collection where Element: Equatable {
    /// Compares the elements in a collection to determine if they are identical
    func allAreEqual() -> Bool {
        guard let first = self.first else { return true } // empty
        return self.dropFirst().allSatisfy { $0 == first }
    }
}

extension Collection {
    func distance(to index: Index) -> Int { distance(from: startIndex, to: index) }
}

extension Array where Element == String {
    mutating func extractFirst() -> String {
        guard !self.isEmpty else {
            return String()
        }
        let extraction = self.first!
        self = Array<String>(self.dropFirst())
        return extraction
    }
}

extension Array where Element == Int {
    mutating func extractFirst() -> Int {
        guard !self.isEmpty else {
            return Int()
        }
        let extraction = self.first!
        self = Array<Int>(self.dropFirst())
        return extraction
    }
}
