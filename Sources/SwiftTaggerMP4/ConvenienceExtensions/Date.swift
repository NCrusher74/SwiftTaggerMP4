/*
  Date.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation

@available(OSX 10.12, *)
extension Date {
    /// The `mp4Epoch` is January 1, 1904.
    private static let mp4Epoch: Date = {
        let calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(identifier: "GMT") ?? .current

        let components = DateComponents(calendar: calendar, timeZone: timeZone, year: 1904, month: 1, day: 1)
        if let date = components.date {
            return date
        } else {
            return Date.distantPast
        }
    }()
    
    var dateIntervalSince1904: Int {
        let timeInterval = Int(timeIntervalSince(Date.mp4Epoch))
        return timeInterval
    }
}
