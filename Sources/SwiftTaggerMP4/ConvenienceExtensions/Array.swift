//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation

extension Array where Element == String {
    /// Convenience extension. Joins array into string with components separated by `"; "`
    var toStringWithSemiColon: String {
        return self.joined(separator: "; ")
    }
    
    /// Convenience extension. Joins array into string with components separated by `"|"`
    var toString: String {
        return self.joined(separator: "|")
    }

}
