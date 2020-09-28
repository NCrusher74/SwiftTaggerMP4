//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/6/20.
//

import Foundation

extension Tag {
        /// List the files of the mp4 file
    /// Returns an array of `(startTime, title)` tuples
    /// `startTime`: The chapter's start time, in milliseconds
    /// `title`: The chapter's title
    func listChapters() -> [(startTime: Int, title: String)] {
        var chaptersArray = [(Int, String)]()
        let chapterHandler = self.chapterHandler
        let chapters = chapterHandler.sortedChapters()
        for chapter in chapters {
            let startTime = chapter.startTime
            let title = chapter.chapter.title
            chaptersArray.append((startTime, title))
        }
        return chaptersArray
    }
    
    /// Adds a chapter at the specified start time (in milliseconds) with the specified title.
    /// If a chapter exists at the specified start time, it will be overwritten.
    /// To edit a chapter title, simply overwrite the existing chapter with a new one
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    ///  - title: The chapter title
    mutating func addChapter(startTime: Int, title: String) {
        // get the old chapters dictionary
        var chapters = chapterHandler.chapters
        let newChapter = ChapterHandler.Chapter(title: title)
        // add the new chapter
        chapters[startTime] = newChapter
        // initialize a new converter with the new dictionary
        self.chapterHandler.chapters = chapters
    }
    
    /// Removes the chapter at the specified start time.
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    mutating func removeChapter(startTime: Int) {
        self.chapterHandler.chapters[startTime] = nil
    }
    
    /// Removes all chapters.
    mutating func removeAllChapters() {
        self.chapterHandler.chapters = [:]
    }
}
