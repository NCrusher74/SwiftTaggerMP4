//
//  ChapterHandler.swift
//
//
//  Created by Nolaine Crusher on 6/9/20.
//

import Foundation
import CMP4v2
import Cocoa

struct TableOfContents {
    
    var chapters: [Int: Chapter]
 
    struct Chapter {
        var chapterTitle: String?
        //        var chapterThumbnail: NSImage?
        
        init(title: String?) {
            self.chapterTitle = title
        }
    }
    
    /// The chapters in chronological order.
    /// startTime is in milliseconds
    func sortedChapters() -> [(startTime: Int, chapter: Chapter)] {
        return chapters.keys.sorted().map { ($0, chapters[$0]!) }
    }
}

@available(OSX 10.13, *)
extension Tag {
    
    var tableOfContents: TableOfContents {
        get {
            self.toc
        }
        set {
            let newChapters = newValue.sortedChapters()
            // wipe the existing chapter so they can be replaced
            self.toc.chapters = [:]
            
            for index in newChapters.indices {
                // get the current chapter
                let chapter = newChapters[index]
                // get the endTime for the current chapter from the startTime of the next chapter
                let endTime: Int
                // get the index of the next chapter
                let nextIndex = newChapters.index(after: index)
                if nextIndex < newChapters.endIndex {
                    let nextChapter = newChapters[nextIndex]
                    // get the start time of the next chapter for the end time of the current chapter
                    endTime = nextChapter.startTime
                } else {
                    // unless it's the last chapter, in which case the end time is the end of the file
                    endTime = self.duration
                }
                
                MP4SetChapters(MP4FileHandle., <#T##chapterList: UnsafeMutablePointer<MP4Chapter_t>!##UnsafeMutablePointer<MP4Chapter_t>!#>, <#T##chapterCount: UInt32##UInt32#>, MP4ChapterTypeAny)
            }
       }
    }
    
    /// Retrieves an array of chapters by start time (in milliseconds) and title.
    public var chapterList: [(startTime: Int, title: String)] {
        var chaptersArray: [(Int, String)] = []
        let chapters = self.tableOfContents.sortedChapters()
        for chapter in chapters {
            let startTime = chapter.startTime
            let title = chapter.chapter.chapterTitle ?? ""
            chaptersArray.append((startTime, title))
        }
        return chaptersArray
    }
    
    /// Adds a chapter at the specified start time (in milliseconds) with the specified title.
    /// If a chapter exists at the specified start time, it will be overwritten.
    /// To edit a chapter title, simply overwrite the existing chapter with a new one
    public mutating func addChapter(at startTimeInMilliseconds: Int, title: String) {
        var tocChapters = self.toc.chapters
        tocChapters.updateValue(TableOfContents.Chapter(title: title), forKey: startTimeInMilliseconds)
        self.tableOfContents.chapters = tocChapters
    }
    
    /// Removes the chapter at the specified start time.
    public mutating func removeChapter(at startTime: Int) {
        self.tableOfContents.chapters[startTime] = nil
    }
    
    /// Removes all chapters.
    public mutating func removeAllChapters() {
        self.tableOfContents.chapters = [:]
    }
}
