//
//  String.swift
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

    /// Convenience Extension. Divides string in components separated by `"; "`
    var toArray: [String] {
        return self.components(separatedBy: "; ")
    }
}

extension Array where Element == String {
    /// Convenience extension. Joins array into string with components separated by `"; "`
    var toString: String {
        return self.joined(separator: "; ")
    }
}
