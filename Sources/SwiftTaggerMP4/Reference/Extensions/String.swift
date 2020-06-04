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
}
