//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/5/20.
//

import Foundation

struct ChapterHandler {
    struct Chapter {
        var title: String
    }
    var chapters: [Int: Chapter]
    /// The array of chapter titles
    /// Sorts chapters into chronological order by `startTime` and returns an array of `(startTime: Chapter)` tuples
    func sortedChapters() -> [(startTime: Int, chapter: Chapter)] {
        return chapters.keys.sorted().map { ($0, chapters[$0]!) }
    }
    
    init(moov: Moov, fileData: Data) throws {
        var chapterList = [Int: Chapter]()

        if let chpl = moov.udta?.chpl {
            for item in chpl.chapterTable {
                let startTime = item.startTime
                let chapter = Chapter(title: item.title)
                chapterList[startTime] = chapter
            }
        } else {
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
                let startTimes = ChapterHandler.getStartTimesFromDurations(timeScale: timeScale,
                    stts: stts,
                    initialStart: initialStart)
                
                if startTimes.isEmpty {
                    chapterList = [:]
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

                    var titles = ChapterHandler.getChapterTitlesFromOffsetsAndSizes(
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
                        let chapter = Chapter(title: title)
                        chapterList[startTime] = chapter
                    }
                }
            }
        }
        self.chapters = chapterList
    }
    
    var chapterTitles: [String] {
        if sortedChapters().isEmpty {
            return []
        } else {
            var titles = [String]()
            let chapters = sortedChapters()
            for chapter in chapters {
                let title = chapter.chapter.title
                titles.append(title)
            }
            return titles
        }
    }
    
    /// The array of chapter start times (times are in milliseconds)
    var chapterStarts: [Int] {
        if sortedChapters().isEmpty {
            return []
        } else {
            var starts = [Int]()
            let chapters = sortedChapters()
            for chapter in chapters {
                let start = chapter.startTime
                starts.append(start)
            }
            return starts
        }
    }
    
    static func getChapterTitlesFromOffsetsAndSizes(
        offsets: [Int],
        sizes: [Int],
        data: Data) -> [String] {
        var titles = [String]()
        
        if offsets.count == sizes.count {
            // don't assume samples are consecutive
            for (index, size) in sizes.enumerated() {
                let start = offsets[index]
                let end = start + size
                let range = start ..< end
                var chunkData = data.subdata(in: range)
                let stringLength = chunkData.extractToInt(2)
                let stringData = chunkData.extractFirst(stringLength)
                let bom: Data = Data([0xfe, 0xff])
                let bomRange = stringData.startIndex ..< stringData.index(stringData.startIndex, offsetBy: 2)
                if stringData.subdata(in: bomRange) == bom {
                    if let string = String(data: stringData, encoding: .utf16) {
                        titles.append(string)
                    } else {
                        titles.append("Unparseable utf16 string")
                    }
                } else {
                    if let string = stringData.stringUtf8 {
                        titles.append(string)
                    } else {
                        titles.append("Unparseable utf8 string")
                    }
                }
            }
        } else {
            // assume samples are consecutive, since we only have the first index to work with
            if let firstOffset = offsets.first {
                var offset = firstOffset
                for size in sizes {
                    let next = offset + size
                    let range = offset ..< next
                    var chunkData = data.subdata(in: range)
                    let stringLength = chunkData.extractToInt(2)
                    if let string = chunkData.extractFirst(stringLength).stringUtf8 {
                        titles.append(string)
                    }
                    offset = next
                }
            }
        }
        return titles
    }
    
    static func getStartTimesFromDurations(
        timeScale: Double, stts: Stts, initialStart: Int) -> [Int] {
        var starts = [initialStart]
        var currentStart = initialStart

        // handle all but the last
        for item in stts.sampleTable.dropLast() {
            if item.sampleCount == 1 {
                let duration = (item.sampleDuration / timeScale) * 1000
                currentStart += Int(duration.rounded())
                starts.append(currentStart)
            } else {
                var count = item.sampleCount
                while count > 0 {
                    let duration = (item.sampleDuration / timeScale) * 1000
                    currentStart += Int(duration.rounded())
                    starts.append(currentStart)
                    count -= 1
                }
            }
        }
        // handle the last
        // we don't need the very last duration because it will create a start time for nothing
        if let item = stts.sampleTable.last {
            // if this sample count is 1, this won't be executed
            var count = item.sampleCount - 1
            while count > 0 {
                currentStart += Int(item.sampleDuration)
                starts.append(currentStart)
                count -= 1
            }
        }
        return starts
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

    /// Calculate the durations of chapter samples
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