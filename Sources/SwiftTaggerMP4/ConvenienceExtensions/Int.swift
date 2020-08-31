//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation
extension Int {
    /// Converts integer to big endian data appropriate for the chosen bits
    func beData(_ bits: Int?) -> Data {
        switch bits {
            case 64: return self.uInt64BEData
            case 32: return self.uInt32BEData
            case 16: return self.uInt16BEData
            case 8: return self.uInt8BEData
            default: return self.uInt32BEData
        }
    }
    
    private var uInt64: UInt64 {
        return UInt64(truncatingIfNeeded: self)
    }
    
    private var uInt64BEData: Data {
        return uInt64.beData
    }
    
    private var uInt32: UInt32 {
        return UInt32(truncatingIfNeeded: self)
    }
    
    private var uInt32BEData: Data {
        return uInt32.beData
    }
    
    private var uInt16: UInt16 {
        return UInt16(truncatingIfNeeded: self)
    }
    
    private var uInt16BEData: Data {
        return uInt16.beData
    }
    
    private var uInt8: UInt8 {
        return UInt8(truncatingIfNeeded: self)
    }
    
    private var uInt8BEData: Data {
        return uInt8.beData
    }
}
