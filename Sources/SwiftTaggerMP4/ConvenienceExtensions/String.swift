//
//  String.swift
//  
//
//  Created by Nolaine Crusher on 6/3/20.
//

import Foundation

extension String {
    /// Convenience Extension. Divides string in components separated by `"; "`
    var toArrayWithSemiColon: [String] {
        return self.components(separatedBy: "; ")
    }
    
    /// Convenience Extension. Divides string in components separated by `"|"`
    var toArray: [String] {
        return self.components(separatedBy: "|")
    }
    
    var encodedUtf8: Data {
        var data = Data()
        data.append(contentsOf: self.utf8)
        return data
    }
    
    var encodedUtf8WithNullTerminator: Data {
        var data = Data()
        data.append(contentsOf: self.utf8)
        data.append(0x00)
        // UTF‐8 is a superset of ASCII.
        return data
    }
    
    var encodedISOLatin1: Data {
        var data = Data()
        data.append(self.data(using: .isoLatin1) ?? Data())
        return data
    }
}
