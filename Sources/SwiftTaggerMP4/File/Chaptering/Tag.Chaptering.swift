//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/6/20.
//

import Foundation

@available(OSX 11.0,  iOS 14.0, *)
extension Tag {
        /// List the files of the mp4 file
    /// Returns an array of `(startTime, title)` tuples
    /// `startTime`: The chapter's start time, in milliseconds
    /// `title`: The chapter's title
    public var chapterList: [Chapter] {
        let chapterHandler = self.chapterHandler
        return chapterHandler.toc.chapters
    }
    
    /// Adds a chapter at the specified start time (in milliseconds) with the specified title.
    /// If a chapter exists at the specified start time, it will be overwritten.
    /// To edit a chapter title, simply overwrite the existing chapter with a new one
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    ///  - title: The chapter title
    public mutating func addChapter(startTime: Int, title: String) {
        chapterHandler.toc.addChapter(startTime: startTime, title: title)
    }
    
    /// Removes the chapter at the specified start time.
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    public mutating func removeChapter(startTime: Int) {
        self.chapterHandler.toc.removeChapter(startTime: startTime)
    }
    
    /// Removes all chapters.
    public mutating func removeAllChapters() {
        self.chapterHandler.toc.removeAllChapters()
    }
}
