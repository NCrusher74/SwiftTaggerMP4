//
//  DateHandler.swift
//  
//
//  Created by Nolaine Crusher on 6/8/20.
//

import Foundation
import AVFoundation


@available(OSX 10.13, *)
extension Tag {
    
    private func date(for identifier: Metadata) -> (
        year: Int?,
        month: Int?,
        day: Int?,
        hour: Int?,
        minute: Int?)? {
        let items = AVMetadataItem.metadataItems(
            from: self.metadata,
            withKey: identifier.rawValue,
            keySpace: identifier.keySpace)
            if let item = items.first {
                let calendar = Calendar(identifier: .iso8601)
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                var year: Int?
                var month: Int?
                var day: Int?
                var hour: Int?
                var minute: Int?
                if identifier == .recordingDate {
                    if let date = item.dateValue {
                        let components = calendar.dateComponents(in: timeZone, from: date)
                        year = components.year
                        month = components.month
                        day = components.day
                        hour = components.hour
                        minute = components.minute
                    }
                } else {
                    if let dateString = item.stringValue {
                        let formatterA = ISO8601DateFormatter().withInternetDateTimeAndGMT0
                        let formatterB = ISO8601DateFormatter().withDashAndGMT0
                        var components = DateComponents()
                        if let date = formatterA.date(from: dateString) {
                            components = calendar.dateComponents(in: timeZone, from: date)
                        } else if let date = formatterB.date(from: dateString) {
                            components = calendar.dateComponents(in: timeZone, from: date)
                        }
                        year = components.year
                        month = components.month
                        day = components.day
                        hour = components.hour
                        minute = components.minute
                    }
                }
                return (year,month,day,hour,minute)
        }; return (nil, nil, nil, nil, nil)
    }
    
    private mutating func set(metadataItem: Metadata, to components: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)) {
        let item = AVMutableMetadataItem()
        item.keySpace = metadataItem.keySpace
        item.key = metadataItem.rawValue as NSString
        
        let formatter = ISO8601DateFormatter().withInternetDateTimeAndGMT0
        let calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0)
        let components = DateComponents(
            calendar: calendar,
            timeZone: timeZone,
            year: components.year,
            month: components.month,
            day: components.day,
            hour: components.hour,
            minute: components.minute)
        if let date = components.date {
            let dateString = formatter.string(from: date)
            item.value = dateString as NSString
        }
        var metadata = self.metadata
        for (index, dataItem) in metadata.enumerated() {
            if dataItem.key as! NSString == item.key as! NSString {
                metadata.remove(at: index)
            }
        }
        metadata.append(item)
        self.metadata = metadata
    }
    
    var encodingTime: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .encodingTime)
        }
        set {
            if let new = newValue {
                set(metadataItem: .encodingTime, to: new)
            }
        }
    }

    var originalReleaseYear: Int? {
        get {
            let components = date(for: .originalYear)
            return components?.year
        }
        set {
            let new: (Int?, Int?, Int?, Int?, Int?) = (newValue, nil, nil, nil, nil)
            set(metadataItem: .originalYear, to: new)
        }
    }

    var purchaseDate: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .purchaseDate)
        }
        set {
            if let new = newValue {
                set(metadataItem: .purchaseDate, to: new)
            }
        }
    }
    
    var recordingDate: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .recordingDate)
        }
        set {
            if let new = newValue {
                set(metadataItem: .recordingDate, to: new)
            }
        }
    }

    var releaseDate: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .releaseDate)
        }
        set {
            if let new = newValue {
                set(metadataItem: .releaseDate, to: new)
            }
        }
    }

    var taggingTime: (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?)? {
        get {
            date(for: .taggingTime)
        }
        set {
            if let new = newValue {
                set(metadataItem: .taggingTime, to: new)
            }
        }
    }

    var year: Int? {
        get {
            let components = date(for: .year)
            return components?.year
        }
        set {
            let new: (Int?, Int?, Int?, Int?, Int?) = (newValue, nil, nil, nil, nil)
            set(metadataItem: .year, to: new)
        }
    }
}
