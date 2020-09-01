/*
  File 2.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
extension Collection where Element: Equatable {
    func allAreEqual() -> Bool {
        guard let first = self.first else { return true } // empty
        return self.dropFirst().allSatisfy { $0 == first }
    }
}
