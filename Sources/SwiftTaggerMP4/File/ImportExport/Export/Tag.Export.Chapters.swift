//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/5/21.
//

import Foundation

extension Tag {
    public func exportChapters(
        format: ChapterExportFormat,
        usingFullCueMetadata: Bool = false) throws {
        
        let destination = location
            .deletingPathExtension()
            .appendingPathExtension(format.fileExtension)
        
        let string: String
        switch format {
            case .cue:
                string = formatAsCue(
                    fullMetadata: usingFullCueMetadata)
            case .mp4v2:
                string = formatAsMp4v2()
            case .ogg:
                string = formatAsOgg()
        }

        try string.write(
            to: destination,
            atomically: true,
            encoding: .utf8)
    }
    
    private func formatAsCue(fullMetadata: Bool) -> String {
        var string = """
            """
        
        if let album = album {
            string.append("TITLE \"\(album)\"\n")
        }
        
        if let albumArtist = albumArtist {
            string.append("PERFORMER \"\(albumArtist)\"\n")
        }
        
        if fullMetadata {
            if let composer = composer {
                string.append("COMPOSER \"\(composer)\"\n")
            }
            var genre: String? {
                if let predefined = predefinedGenre {
                    return predefined.stringValue
                } else {
                    return customGenre
                }
            }
            
            if let isrc = isrc {
                string.append("ISRC \"\(isrc)\"\n")
            }
            
            if let genre = genre {
                string.append("GENRE \"\(genre)\"\n")
            }
            
            if let description = comment {
                string.append("MESSAGE \"\(description)\"\n")
            }
        }
        
        string.append("FILE \"\(location.lastPathComponent)\" \(location.pathExtension.uppercased())\n")
        
        var track = 1
        for chapter in chapterList {
            string.append("  TRACK \(pad: track, toWidth: 2, using: "0") AUDIO\n")
            string.append("    TITLE \"\(chapter.title)\"\n")
            string.append("    INDEX 01 \(chapter.startTime.cueTimeStamp)\n")
            
            track += 1
        }
        
        return string
    }

    // 00:00:00.000 Chapter 1
    private func formatAsMp4v2() -> String {
        var string = """
            """
        
        for chapter in chapterList {
            let timeStamp = chapter.startingTimeStamp
            let line = "\(timeStamp) \(chapter.title)\n"
            string.append(line)
        }
        
        return string
    }
    
     // Exports chapters in ogg-style format
     //
     // CHAPTER01=00:00:00.000
     // CHAPTER01NAME=Chapter 1
    private func formatAsOgg() -> String {
        var string = """
            """
        let width: Int
        if chapterList.count > 99 {
            width = 3
        } else {
            width = 2
        }

        var count = 1
        for chapter in chapterList {
            let timeLead = "CHAPTER\(pad: count, toWidth: width)="
            let timeLine = timeLead + "\(chapter.startingTimeStamp)\n"
            
            string.append(timeLine)
            
            let titleLead = "CHAPTER\(pad: count, toWidth: width)NAME="
            let titleLine = titleLead + chapter.title + "\n"

            string.append(titleLine)
            
            count += 1
        }
        
        return string
    }
}
