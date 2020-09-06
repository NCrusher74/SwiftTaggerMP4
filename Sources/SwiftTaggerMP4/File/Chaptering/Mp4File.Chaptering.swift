//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/6/20.
//

import Foundation

extension Mp4File {
    
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
}
