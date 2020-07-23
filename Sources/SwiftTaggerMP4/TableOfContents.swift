//
//  TableOfContents.swift
//  
//
//  Created by Nolaine Crusher on 6/16/20.
//

import Foundation

//struct TableOfContents {
//    
//    var chapters: [Int: Chapter]
//    var fileDuration: Int
//    struct Chapter {
//        
//        var chapterTitle: String?
//        init(title: String?) {
//            if let title = title {
//                self.chapterTitle = title
//            } else {
//                self.chapterTitle = nil
//            }
//        }
//    }
//    /// The chapters in chronological order.
//    func sortedChapters() -> [(startTime: Int, chapter: Chapter)] {
//        return chapters.keys.sorted().map { ($0, chapters[$0]!) }
//    }
//    
//    // convert chapters to mp4Chapter type
//    var mp4Chapters: [MP4Chapter_t] {
//        var mp4Chapters: [MP4Chapter_t] = []
//        var defaultChapterTitle: String = ""
//        // for each index in the chapters array...
//        for index in sortedChapters().indices {
//            
//            defaultChapterTitle = "Chapter \(Int(index))"
//            // get the current chapter
//            let chapter = sortedChapters()[index]
//            // get the endTime for the current chapter from the startTime of the next chapter
//            let endTime: Int
//            // get the index of the next chapter
//            let nextIndex = sortedChapters().index(after: index)
//            if nextIndex < sortedChapters().endIndex {
//                let nextChapter = sortedChapters()[nextIndex]
//                // get the start time of the next chapter for the end time of the current chapter
//                endTime = nextChapter.startTime
//            } else {
//                // unless it's the last chapter, in which case the end time is the end of the file
//                endTime = self.fileDuration
//            }
//            // convert the duration to MP4Duration
//            let chapterDuration = endTime - chapter.startTime
//            let mp4Duration = MP4Duration(chapterDuration)
//         
//            // use the duration and chapter title to initialize an MP4Chapter_t object
//            let title = chapter.chapter.chapterTitle
//            var mp4Chapter = MP4Chapter_t()
//            mp4Chapter.duration = mp4Duration
//            withUnsafeMutableBytes(of: &mp4Chapter.title) { buffer in
//                buffer.copyBytes(from: title?.utf8 ?? defaultChapterTitle.utf8)
//            }
//            mp4Chapters.append(mp4Chapter)
//        }
//        return mp4Chapters
//    }
//}
//
//extension Tag {
//    
////    var tableOfContents: TableOfContents {
////        get {
////            self.toc
////        }
////        set {
////            let toc = self.toc
////            let mp4Chapters = toc.mp4Chapters
////            let chapterCountInt = mp4Chapters.count
////            let chapterCountUInt32 = chapterCountInt.truncatedUInt32
////            
////            MP4SetChapters(fileHandle,
////                           <#T##chapterList: UnsafeMutablePointer<MP4Chapter_t>!##UnsafeMutablePointer<MP4Chapter_t>!#>,
////                           chapterCountUInt32,
////                           MP4ChapterTypeAny)
////        }
////    }
//}
