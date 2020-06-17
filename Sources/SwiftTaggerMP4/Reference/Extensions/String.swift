//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 6/3/20.
//

import Foundation

extension String {
    func encodedASCII() -> Data {
        var data = Data()
        data.append(contentsOf: self.utf8)
        // UTF‐8 is a superset of ASCII.
        return data
    }
    
    init(withInt int: Int, leadingZeros: Int = 2) {
        self.init(format: "%0\(leadingZeros)d", int)
    }
    
    func leadingZeros(_ zeros: Int) -> String {
        if let int = Int(self) {
            return String(withInt: int, leadingZeros: zeros)
        }
        print("Warning: \(self) is not an Int")
        return ""
    }
}
