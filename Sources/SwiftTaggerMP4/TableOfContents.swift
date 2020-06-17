//
//  TableOfContents.swift
//  
//
//  Created by Nolaine Crusher on 6/16/20.
//

import Foundation
import CMP4v2

struct TableOfContents {
    
    var chapters: [Int: Chapter]
    var fileDuration: Int
    struct Chapter {
        
        var chapterTitle: String
        init(title: String) {
            self.chapterTitle = title
        }
    }
    /// The chapters in chronological order.
    func sortedChapters() -> [(startTime: Int, chapter: Chapter)] {
        return chapters.keys.sorted().map { ($0, chapters[$0]!) }
    }
    
    // convert chapters to mp4Chapter type
    var mp4Chapters: [MP4Chapter_t] {
        var mp4Chapters: [MP4Chapter_t] = []
        // for each index in the chapters array...
        for index in sortedChapters().indices {
            // get the current chapter
            let chapter = sortedChapters()[index]
            // get the endTime for the current chapter from the startTime of the next chapter
            let endTime: Int
            // get the index of the next chapter
            let nextIndex = sortedChapters().index(after: index)
            if nextIndex < sortedChapters().endIndex {
                let nextChapter = sortedChapters()[nextIndex]
                // get the start time of the next chapter for the end time of the current chapter
                endTime = nextChapter.startTime
            } else {
                // unless it's the last chapter, in which case the end time is the end of the file
                endTime = self.fileDuration
            }
            let chapterDuration = endTime - chapter.startTime
            let mp4Duration = MP4Duration(chapterDuration)
            var mp4Chapter = MP4Chapter_t()
            mp4Chapter.duration = mp4Duration
            mp4Chapter.title = chapter.chapter.chapterTitle.cString(using: .utf8)
        }
    }
}
