//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/5/20.
//

import Foundation

struct TextDataHandler {
    
    /// Calculate the offsets for chapter title data
    static func calculateTitleOffsets(startingOffset: Int, titles: [String]) -> [Int] {
        var offsets: [Int] = [startingOffset]
        var offset = startingOffset
        for title in titles.dropLast() {
            let chunkSize = title.count + 2
            offset = offset + chunkSize
            offsets.append(offset)
        }
        return offsets
    }

    /// Calculate the durations of chapter samples
    static func calculateChapterDurations(from startTimes: [Double], fileDuration: Double) -> [Double] {
        var chapterDurations = [Double]()
        let enumeratedStarts = startTimes.enumerated()
        let firstStart = startTimes.first ?? 0
        // Handle all but the last one.
        for (index, startTime) in enumeratedStarts.dropLast() {
            let followingTime: Double = startTimes[startTimes.index(after: index)]
            chapterDurations.append(followingTime - startTime)
        }
        
        // Handle the last one.
        let lastStart = startTimes.last ?? firstStart
        chapterDurations.append(fileDuration - lastStart)
        
        return chapterDurations
    }
    
    private enum TextDataHandlerError: Error {
        /// Error thrown when extraction of chapter title data fails
        case UnableToLocateChapterTitleData
    }
}
