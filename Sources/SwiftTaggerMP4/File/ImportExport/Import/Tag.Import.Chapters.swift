//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/6/21.
//

import Foundation
import iTunesGenreID

extension Tag {
    public mutating func importChapters(location: URL, format: ChapterExportFormat) throws {
        let string = try String(contentsOf: location)

        switch format {
            default:
                try importCueFormat(string)
        }
    }
    
    private mutating func importCueFormat(_ chapterString: String) throws {
        var sections = chapterString.components(separatedBy: "TRACK")

        let header = sections.extractFirst()
        parseMetadataFromCue(header)
        
        var titles = [String]()
        var starts = [Int]()
        while !sections.isEmpty {
            let current = sections.extractFirst()
            
            var lines = current.components(separatedBy: .newlines)
            lines = lines.map({$0.trimmingCharacters(in: .whitespaces)})

            guard var titleLine = lines.first(where: {$0.hasPrefix("TITLE")}) else { continue }

            guard var startLine = lines.first(where: {$0.hasPrefix("INDEX 01")}) else { continue }

            titleLine = titleLine.dropFirst(5)
                .trimmingCharacters(in: .whitespaces)
                .trimmingCharacters(in: CharacterSet(charactersIn: "\""))
            
            startLine = startLine.dropFirst(8).trimmingCharacters(in: .whitespaces)

            var segments = startLine
                .components(separatedBy: ":")
            let startTime = segments.millisecondsFromMMSSFF()
            
            titles.append(titleLine)
            starts.append(startTime)
        }
        
        guard starts.count == titles.count else {
            print("Unable to import chapters. The number of chapter titles differs from the number of chapter start times.")
            return
        }

        removeAllChapters()
        while !starts.isEmpty {
            let title = titles.extractFirst()
            let start = starts.extractFirst()

            addChapter(startTime: start, title: title)
        }
    }
    
    // CHAPTER01=00:00:00.000
    // CHAPTER01NAME=Chapter 1
    private mutating func importOggFormat(_ chapterString: String) {
        var chapterString = chapterString

        // get rid of everything before the stuff we want
        if let index = chapterString.distance(of: "CHAPTER"), index != 0 {
            chapterString = String(chapterString.dropFirst(index))
        }
        
        var lines = chapterString.components(separatedBy: .newlines)
        
        guard !lines.isEmpty else {
            print("Cannot Import Files; Source file is empty.")
            return
        }
        
        removeAllChapters()
        while !lines.isEmpty {
            let timeStampLine = lines.extractFirst()
            let titleLine = lines.extractFirst()
            
            var timeStamp = timeStampLine
            if let index = timeStampLine.distance(of: "=") {
                timeStamp = String(timeStampLine.dropFirst(index))
            }
            
            let startTime = timeStamp.millisecondsFromHHMMSSZZZ()
            
            var title = "Untitled"
            if let index = titleLine.distance(of: "=") {
                title = String(titleLine.dropFirst(index))
            }
            
            addChapter(startTime: startTime, title: title)
        }
    }

    // 00:00:00.000 Chapter Title
    private mutating func importMp4v2Format(_ chapterString: String) {
        var chapterString = chapterString
        
        // get rid of everything before the stuff we want
        if let index = chapterString.distance(of: "00:"), index != 0 {
            chapterString = String(chapterString.dropFirst(index))
        }
        
        var lines = chapterString.components(separatedBy: .newlines)
        
        guard !lines.isEmpty else {
            print("Cannot Import Files; Source file is empty.")
            return
        }
        
        removeAllChapters()
        while !lines.isEmpty {
            let line = lines.extractFirst()
            var parts = line.components(separatedBy: .whitespaces)
            
            guard !parts.isEmpty else { continue }
            
            let timeStampString = parts.extractFirst()
            let startTime = timeStampString.millisecondsFromHHMMSSZZZ()
            
            var title = "Untitled"
            if parts.count > 1 {
                title = parts.joined(separator: " ")
            } else {
                title = parts.extractFirst()
            }
            
            addChapter(startTime: startTime, title: title)
        }
    }
}
