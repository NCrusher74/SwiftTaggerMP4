/*

 UnsignedInteger.swift
 SwiftTaggerID3

 Copyright ©2020 Nolaine Crusher. All rights reserved.

 */

import Foundation

extension UnsignedInteger {
    private init<D>(parsingLittleEndian data: D)
        where D: Collection, D.Element == UInt8 {
            assert(
                data.count <= MemoryLayout<Self>.size,
                "Data is too large to be expressed with \(Self.self)."
            )
            
            self = data.lazy.enumerated()
                .reduce(into: 0 as Self) { underConstruction, entry in
                    let byte = Self(entry.element)
                    let repositioned = byte << (entry.offset * 8)
                    underConstruction |= repositioned
            }
    }
    private func encodingLittleEndian() -> Data {
        let byteMask: Self = 0xFF
        var data = Data()
        for offset in 0 ..< MemoryLayout<Self>.size {
            let byte = self & (byteMask << (offset * 8))
            let repositioned = byte >> (offset * 8)
            data.append(UInt8(repositioned))
        }
        return data
    }
    
    init<D>(parsing data: D, _ endianness: Endianness)
        where D: Collection, D.Element == UInt8 {
            
            switch endianness {
                case .bigEndian:
                    self.init(parsingLittleEndian: data.reversed())
                case .littleEndian:
                    self.init(parsingLittleEndian: data)
            }
    }
    func encoding(endianness: Endianness) -> Data {
        switch endianness {
            case .littleEndian:
                return encodingLittleEndian()
            case .bigEndian:
                return Data(encodingLittleEndian().reversed())
        }
    }
    
    func encodingSynchsafe() -> Self {
        let byteMask: Self = 0b0111_1111
        var encoded: Self = 0
        for offset in 0 ..< MemoryLayout<Self>.size {
            // Pull out seven bits at a time.
            let relevantBits = self & (byteMask << (offset * 7))
            // Shift them to make gaps.
            let shifted = relevantBits << offset * 1
            encoded |= shifted
        }
        return encoded
    }
    func decodingSynchsafe() -> Self {
        let byteMask: Self = 0b0111_1111
        var decoded: Self = 0
        for offset in 0 ..< MemoryLayout<Self>.size {
            // Pull out each byte without the leading bit.
            let relevantBits = self & (byteMask << (offset * 8))
            // Shift them to close the gaps.
            let shifted = relevantBits >> offset * 1
            decoded |= shifted
        }
        return decoded
    }
}
