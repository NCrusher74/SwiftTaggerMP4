//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

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
}

extension UInt64 {
    /// Converts the UInt64 to big endian data
    var beData: Data {
        var int = self.bigEndian
        return Data(bytes: &int, count: MemoryLayout<UInt64>.size)
    }
}

extension UInt32 {
    /// Converts the UInt32 to big endian data
    var beData: Data {
        var int = self.bigEndian
        return Data(bytes: &int, count: MemoryLayout<UInt32>.size)
    }
}

extension UInt16 {
    /// Converts the UInt16 to big endian data
    var beData: Data {
        var int = self.bigEndian
        return Data(bytes: &int, count: MemoryLayout<UInt16>.size)
    }
}

extension UInt8 {
    /// Converts the UInt8 to big endian data
    var beData: Data {
        var int = self.bigEndian
        return Data(bytes: &int, count: MemoryLayout<UInt8>.size)
    }
}
