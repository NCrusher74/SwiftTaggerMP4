//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/6/21.
//

import Foundation
import iTunesGenreID

extension Tag {
    mutating func importChapters(location: URL, format: ChapterExportFormat) throws {
        let string = try String(contentsOf: location)

        switch format {
            default:
                try parseChaptersFromCue(string)
        }
    }
    
    mutating func parseChaptersFromCue(_ chapterString: String) throws {
        var sections = chapterString.components(separatedBy: "TRACK")
        let header = sections.extractFirst()
        
        parseMetadataFromCue(header)
    }
}
