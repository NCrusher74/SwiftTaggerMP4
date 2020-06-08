/*

 Sequence.swift
 SwiftTaggerID3

 Copyright ©2020 Nolaine Crusher. All rights reserved.

 */

import Foundation

public extension Sequence where Element: BinaryInteger {
    
    func hexadecimal() -> String {
        return lazy.map({ String($0, radix: 16) }).joined(separator: " ")
    }
}
