/*
 
 Int.swift
 SwiftTaggerID3
 
 Copyright ©2020 Nolaine Crusher. All rights reserved.
 
 */

import Foundation

extension Int {
    
    var truncatedUInt32: UInt32 {
        return UInt32(truncatingIfNeeded: self)
    }
}
