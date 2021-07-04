//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/26/20.
//

import Foundation
extension String {
    
    private func attemptAAXDate() -> Date? {
        let calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
        
        var dateComponents = DateComponents()
        dateComponents.calendar = calendar
        dateComponents.timeZone = timeZone
        
        let stringComponents: [String] = self.components(separatedBy: "-")
        
        guard stringComponents.count == 3 && ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"].contains(stringComponents[1]) else {
            return nil
        }
        
        if let dayInt = Int(stringComponents[0]) {
            dateComponents.day = dayInt
        } else {
            dateComponents.day = nil
        }
        
        let monthAbbreviated = stringComponents[1]
        switch monthAbbreviated {
            case "JAN": dateComponents.month = 01
            case "FEB": dateComponents.month = 02
            case "MAR": dateComponents.month = 03
            case "APR": dateComponents.month = 04
            case "MAY": dateComponents.month = 05
            case "JUN": dateComponents.month = 06
            case "JUL": dateComponents.month = 07
            case "AUG": dateComponents.month = 08
            case "SEP": dateComponents.month = 09
            case "OCT": dateComponents.month = 10
            case "NOV": dateComponents.month = 11
            case "DEC": dateComponents.month = 12
            default: dateComponents.month = nil
        }
        
        if let yearInt = Int(stringComponents[2]) {
            dateComponents.year = yearInt
        }
        
        if let date = calendar.date(from: dateComponents) {
            return date
        } else {
            return nil
        }
    }
    
    
    @available(OSX 10.12, iOS 12.0, *)
    private func attemptOtherDate() -> Date? {
        let isoFormatter = ISO8601DateFormatter()
        isoFormatter.formatOptions = [.withInternetDateTime]
        isoFormatter.timeZone = TimeZone(secondsFromGMT: 0) ?? .current

        let formats: [String] = ["d MMM yyyy HH:mm:ss", "yyyy-MM-ddTHH:mm", "yyyy-MM-ddTHH:mm:ssZ", "MM-dd-yyyy HH:mm","yyyy-MM-ddTHH", "MMM d, yyyy", "d MMM yyyy", "yyyy-MM-dd", "MM/dd/yyyy", "dd/MM/yyyy", "dd.MM.yy", "dd.MM.yyyy", "dd-MM-yy", "dd-MM-yyyy", "dd-MMM-yyyy", "dd-MMM-yy", "MM-dd-yyyy", "MMMM yyyy", "yyyy-MM"]
        let dateFormatters: [DateFormatter] = formats.map { format in
            let formatter = DateFormatter()
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = format
            return formatter
        }
        
        if let date = isoFormatter.date(from: self) {
            return date
        } else {
            for format in dateFormatters {
                if let date = format.date(from: self) {
                    return date
                } else {
                    return nil
                }
            }; return nil
        }
    }
    
    @available(OSX 10.12, iOS 12.0, *)
    func attemptDateFromYear() -> Date? {
        guard self.count == 4 else {
            return nil
        }

        let calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
        
        var dateComponents = DateComponents()
        dateComponents.calendar = calendar
        dateComponents.timeZone = timeZone

        if let int = Int(self) {
            dateComponents.year = int
            return calendar.date(from: dateComponents)
        } else {
            return nil
        }
    }
    
    @available(OSX 10.12, iOS 12.0, *)
    func attemptDateFromString() -> Date? {
        if let date = attemptAAXDate() {
            return date
        } else if let date = attemptDateFromYear() {
            return date
        } else if let date = attemptOtherDate() {
            return date
        } else {
            return nil
        }
    }

    func convertCamelToUpperCase() -> String {
        return self
            .replacingOccurrences(of: "([A-Z])",
                                  with: " $1",
                                  options: .regularExpression,
                                  range: range(of: self))
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()
    }
}
