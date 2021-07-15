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
            
            if let isrc = isrc {
                string.append("ISRC \"\(isrc)\"\n")
            }
            
            if let genre = predefinedGenre {
                string.append("GENRE \"\(genre)\"\n")
            }
            
            if let description = comment {
                string.append("MESSAGE \"\(description)\"\n")
            }
            
            for (key, value) in metadataAtoms
                .filter({$0.key != .album ||
                            $0.key != .albumArtist ||
                            $0.key != .comment ||
                            $0.key != .composer ||
                            $0.key != .isrc ||
                            $0.key != .predefinedGenre}) {
                if AtomKey.stringKeys.contains(key) {
                    if let atom = value as? StringMetadataAtom {
                        string.append("REM \(key.stringValue.convertCamelCase()) \"\(atom.stringValue)\"\n")
                    }
                } else if AtomKey.integerKeys.contains(key) {
                    if let atom = value as? IntegerMetadataAtom {
                        string.append("REM \(key.stringValue.convertCamelCase()) \(atom.intValue)\n")
                    }
                } else if key == .discNumber || key == .trackNumber {
                    if let atom = value as? PartAndTotalMetadataAtom {
                        var stringValue = ""
                        if let total = atom.total {
                            stringValue = "[\(atom.part)/\(total)]"
                        } else {
                            stringValue = "\(atom.part)"
                        }
                        
                        string.append("REM \(key.stringValue.convertCamelCase()) \"\(stringValue)\"\n")
                    }
                } else if key == .unknown(key.stringValue) {
                    if let atom = value as? UnknownMetadataAtom {
                        string.append("REM (----)  \(key.stringValue.convertCamelCase()) \"\(atom.stringValue)\"\n")
                    }
                }
            }
        }
        
        string.append("FILE \"\(location.lastPathComponent)\" \(location.pathExtension.uppercased())\n")
        
        var track = 1
        for chapter in chapterList {
            string.append("TRACK \(pad: track, toWidth: 2, using: "0") AUDIO\n".padLeft(2))
            string.append("TITLE \"\(chapter.title)\"\n".padLeft(4))
            string.append("INDEX 01 \(chapter.startTime.cueTimeStamp)\n".padLeft(4))
            
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
