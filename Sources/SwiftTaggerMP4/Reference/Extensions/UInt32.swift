/*

 UInt32.swift
 SwiftTaggerID3

 Copyright ©2020 Nolaine Crusher. All rights reserved.

 */

import Foundation

//  IntsExtensions.swift
//  Created by Boris Polania on 2/19/18.

extension UInt32 {
    var bigEndianData: Data {
        var int = self.bigEndian
        return Data(bytes: &int, count: MemoryLayout<UInt32>.size)
    }
}
