/*

 Sequence.swift
 SwiftTaggerID3

 Copyright ©2020 Nolaine Crusher. All rights reserved.

 */

import Foundation

extension Sequence where Element: BinaryInteger {
    
    func hexadecimal() -> String {
        return lazy.map({ String($0, radix: 16) }).joined(separator: " ")
    }
}

extension Character {
    var uint8: UInt8 {
        return String(self).utf8.map{UInt8($0)}[0]
    }
    
    var uint16: UInt16 {
        return String(self).utf16.map{UInt16($0)}[0]
    }
}

extension Sequence where Element == Character {
    var uInt8Array: [UInt8] {
        return String(self).utf8.map{UInt8($0)}
    }
    
    var uInt16Array: [UInt16] {
        return String(self).utf16.map{UInt16($0)}
    }
}
