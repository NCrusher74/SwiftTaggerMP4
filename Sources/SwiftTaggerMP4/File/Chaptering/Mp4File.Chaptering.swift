//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/6/20.
//

import Foundation

extension Mp4File {
        /// List the files of the mp4 file
    /// Returns an array of `(startTime, title)` tuples
    /// `startTime`: The chapter's start time, in milliseconds
    /// `title`: The chapter's title
    public func listChapters() throws -> [(startTime: Int, title: String)] {
        var chaptersArray = [(Int, String)]()
        let chapterHandler = try ChapterDataHandler(readFrom: self)
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
    public func addChapter(startTime: Int, title: String) throws {
        // get the old chapters dictionary
        var chapters = chapterHandler.chapters
        let newChapter = ChapterDataHandler.Chapter(title: title)
        // add the new chapter
        chapters[startTime] = newChapter
        // initialize a new converter with the new dictionary
        self.chapterHandler.chapters = chapters
    }
    
    /// Removes the chapter at the specified start time.
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    public func removeChapter(startTime: Int) throws {
        self.chapterHandler.chapters[startTime] = nil
    }
    
    /// Removes all chapters.
    public func removeAllChapters() throws {
        self.chapterHandler.chapters = [:]
    }
    
    var chapterHandler: ChapterDataHandler {
        get {
            do {
                return try _chapterHandler ?? ChapterDataHandler(readFrom: self)
            } catch {
                fatalError("Unable to initialize Chapter Data Handler")
            }
        }
        set {
            self._chapterHandler = newValue
        }
    }
}
