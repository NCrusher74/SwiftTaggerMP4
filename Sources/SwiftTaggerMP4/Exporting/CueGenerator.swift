//
//  File.swift
//  
//
//  Created by Crystal Wooley on 7/4/21.
//

import Foundation

struct AudiobookCueGenerator {

    let output: String
    
    init(url: URL,
         tag: Tag,
         metadata: [(keyString: String, valueString: String)],
         fullMetadata: Bool = false) {
        
        var string = """
            """
        
        if let album = tag.album {
            string.append("TITLE \"\(album)\"\n")
        }
        
        if let albumArtist = tag.albumArtist {
            string.append("PERFORMER \"\(albumArtist)\"\n")
        }
        
        var genre: String? {
            if let predefined = tag.predefinedGenre {
                return predefined.stringValue
            } else {
                return tag.customGenre
            }
        }
        
        if let genre = genre {
            string.append("REM GENRE \"\(genre)\"\n")
        }
        
        if let isrc = tag.isrc {
            string.append("ISRC \"\(isrc)\"\n")
        }
        
        if let description = tag.comment {
            string.append("REM MESSAGE \"\(description)\"\n")
        }
                
        if fullMetadata {
            let remainder = metadata.filter({!$0.keyString.contains("ALBUM") || !$0.keyString.contains("ALBUM ARTIST") || !$0.keyString.contains("GENRE") || !$0.keyString.contains("ISRC") || !$0.keyString.contains("COMMENT")})
            
            for (key, value) in remainder {
                string.append("REM \(key) \"\(value)\"\n")
            }
        }

        string.append("FILE \(url.fileName).\(url.pathExtension) \(url.pathExtension.uppercased())\n")
        
        var track = 1
        for chapter in tag.chapterList {
            string.append("  TRACK \(pad: track, toWidth: 2, using: "0") AUDIO\n")
            string.append("    TITLE \"\(chapter.title)\"\n")
            string.append("    INDEX 01 \(chapter.startTime.cueTimeStamp)\n")

            track += 1
        }
        
        self.output = string
    }
}

extension Int {
    var cueTimeStamp: String {
        let interval: TimeInterval = TimeInterval(self / 1000)
        
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [ .minute, .second ]
        formatter.zeroFormattingBehavior = .pad
        
        let formatted = formatter.string(from: interval) ?? ""
        
        let remainder = self % 1000
        let frames = (Double(remainder) * 0.075)
        
        let numFormatter = NumberFormatter()
        numFormatter.maximumFractionDigits = 0
        numFormatter.maximumIntegerDigits = 2
        numFormatter.minimumIntegerDigits = 2
        let number = frames as NSNumber
        let framesFormatted = numFormatter.string(from: number)
        
        return "\(formatted):\(framesFormatted ?? "00")"
    }
}
