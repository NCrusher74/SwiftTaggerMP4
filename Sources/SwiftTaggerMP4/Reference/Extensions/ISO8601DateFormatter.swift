//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 6/3/20.
//

import Foundation

@available(OSX 10.12, *)
extension ISO8601DateFormatter {
    
    var withInternetDateTimeAndGMT0: ISO8601DateFormatter {
        self.timeZone = TimeZone(secondsFromGMT: 0)
        self.formatOptions = [.withInternetDateTime]
        return self
    }
    
    var withDashAndGMT0: ISO8601DateFormatter {
        self.timeZone = TimeZone(secondsFromGMT: 0)
        self.formatOptions = [.withFullDate, .withDashSeparatorInDate]
        return self
    }

}
