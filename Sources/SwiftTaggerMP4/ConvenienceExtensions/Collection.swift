/*
  File 2.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
extension Collection where Element: Equatable {
    /// Compares the elements in a collection to determine if they are identical
    func allAreEqual() -> Bool {
        guard let first = self.first else { return true } // empty
        return self.dropFirst().allSatisfy { $0 == first }
    }
}
