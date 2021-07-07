//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/5/20.
//

import Foundation
import SwiftConvenienceExtensions
/// A type that collates chapter data contained in the sample table atoms of a chapter track and converts it to a usable dictionary of chapter information
public typealias TOC = TableOfContents
public typealias Chapter = TableOfContents.Chapter
struct ChapterHandler {
    
    var toc: TableOfContents
    
    init(file: Mp4File) throws {
        let moov = file.moov
        let fileData = file.data
        
        var chapterList = [Chapter]()
        if let chapterTrack = moov.chapterTrack {
            let stbl = chapterTrack.mdia.minf.stbl
            let stts = stbl.stts
            let initialStart: Int
            let timeScale = chapterTrack.mdia.mdhd.timeScale
            if let elst = moov.soundTrack.edts?.elst {
                initialStart = Int((elst.firstStart / timeScale) * 1000)
            } else {
                initialStart = 0
            }
            let startTimes = stts.getStartTimesFromDurations(
                timeScale: timeScale,
                initialStart: initialStart)
            
            if startTimes.isEmpty {
                chapterList = []
            } else {
                let offsets = stbl.chunkOffsetAtom.chunkOffsetTable
                var sizes = [Int]()
                if stbl.stsz.sampleSize == 0 {
                    sizes = stbl.stsz.sampleSizeTable
                } else {
                    var count = stbl.stsz.entryCount
                    while count > 0 {
                        sizes.append(stbl.stsz.sampleSize)
                        count -= 1
                    }
                }
                
                var titles = stbl.getChapterTitlesFromOffsetsAndSizes(
                    offsets: offsets,
                    sizes: sizes,
                    data: fileData)
                
                if startTimes.count > titles.count {
                    var difference = startTimes.count - titles.count
                    while difference > 0 {
                        titles.append("Untitled Chapter")
                        difference -= 1
                    }
                }
                
                for (index, startTime) in startTimes.enumerated() {
                    let title = titles[index]
                    let chapter = Chapter(startTime: startTime, title: title)
                    chapterList.append(chapter)
                }
            }
        }
        let toc = TOC(chapterList)
        self.toc = toc
    }
    
    var chapterTitles: [String] {
        if toc.chapters.isEmpty {
            return []
        } else {
            var titles = [String]()
            let chapters = toc.chapters
            for chapter in chapters {
                let title = chapter.title
                titles.append(title)
            }
            return titles
        }
    }
    
    /// The array of chapter start times (times are in milliseconds)
    var chapterStarts: [Int] {
        if toc.chapters.isEmpty {
            return []
        } else {
            var starts = [Int]()
            let chapters = toc.chapters
            for chapter in chapters {
                let start = chapter.startTime
                starts.append(start)
            }
            return starts
        }
    }
    
    /// Calculate the offsets for chapter title data
    func calculateTitleOffsets(
        startingOffset: Int,
        titles: [String]) -> [Int] {
        var offsets: [Int] = [startingOffset]
        var offset = startingOffset
        for title in titles.dropLast() {
            let chunkSize = title.count + 2
            offset = offset + chunkSize
            offsets.append(offset)
        }
        return offsets
    }
    
    /// Calculate the durations of chapter samples given the duration of the media and the array of start times
    func calculateDurationsFromStartTimes(mediaDuration: Double) -> [Double] {
        var chapterDurations = [Double]()
        let enumeratedStarts = chapterStarts.enumerated()
        let firstStart = chapterStarts.first ?? 0
        // Handle all but the last one.
        for (index, startTime) in enumeratedStarts.dropLast() {
            let followingTime = chapterStarts[chapterStarts.index(after: index)]
            chapterDurations.append(Double(followingTime) - Double(startTime))
        }
        
        // Handle the last one.
        let lastStart = chapterStarts.last ?? firstStart
        chapterDurations.append(mediaDuration - Double(lastStart))
        
        return chapterDurations
    }
    
    enum ChapterHandlerError: Error {
        case UnableToBuildStblAtom
        case UnableToBuildMinfAtom
        case UnableToBuildMdiaAtom
    }
}
