//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation
extension Int {
    private var uInt64: UInt64 {
        return UInt64(truncatingIfNeeded: self)
    }
    
    var beDataFrom64BitInt: Data {
        return uInt64.beData
    }
    
    private var uInt32: UInt32 {
        return UInt32(truncatingIfNeeded: self)
    }
    
   var beDataFrom32BitInt: Data {
        return uInt32.beData
    }
    
    private var uInt16: UInt16 {
        return UInt16(truncatingIfNeeded: self)
    }
    
    var beDataFrom16BitInt: Data {
        return uInt16.beData
    }
    
    private var uInt8: UInt8 {
        return UInt8(truncatingIfNeeded: self)
    }
    
    var beDataFrom8BitInt: Data {
        return uInt8.beData
    }
}
