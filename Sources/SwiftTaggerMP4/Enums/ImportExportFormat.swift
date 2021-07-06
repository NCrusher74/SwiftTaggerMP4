//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/5/21.
//

import Foundation

public enum MetadataExportFormat: String {
    /// Exports metadata in a human-readable format
    case text = "txt"
    /// Exports metadata in comma-delimited format
    case csv = "csv"
    /// Exports metadata in json format
    case json = "json"
}

public enum ChapterExportFormat {
    /// Exports chapters in .cue file format
    ///
    /// TITLE "Part 1"
    /// FILE "file.m4b" M4B
    /// PERFORMER "Author Name"
    ///   TRACK 01 AUDIO
    ///     TITLE "Chapter 1"
    ///     INDEX 01 00:00:00
    ///   TRACK 02 AUDIO
    ///     TITLE "Chapter 2"
    ///     INDEX 01 11:25:55
    case cue
    /// Exports chapters in mp4v2-style format (HH:MM:SS.ZZZ)
    ///
    /// 00:00:00.000 Prologue
    /// 00:00:19.987 Opening
    /// 00:01:50.160 Episode Blablabla
    /// 00:21:54.530 Ending
    /// 00:23:24.453 Preview
    case mp4v2
    /**
    Exports chapters in ogg-style format
     
    CHAPTER01=00:00:00.000
    CHAPTER01NAME=Living Weapon
    CHAPTER02=00:05:00.750
    CHAPTER02NAME=A Better World
     */
    case ogg
    
    var fileExtension: String {
        switch self {
            case .cue: return "cue"
            default: return "txt"
        }
    }
}
