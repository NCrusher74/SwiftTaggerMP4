//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/20/20.
//

import Foundation
import SwiftMp4MetadataParser

@available(OSX 10.13, *)
extension Tag {
    // MARK: - Chaptering
    /// Retrieves an array of chapters by start time (in milliseconds) and title.
    public var chapterList: [(startTime: Int, title: String)] {
        do {
            return try parser.listChapters()
        } catch {
            print("WARNING: Unable to access chapters from SwiftMp4MetadataParser")
            return []
        }
    }
    
    /// Adds a chapter at the specified start time (in milliseconds) with the specified title.
    /// If a chapter exists at the specified start time, it will be overwritten.
    /// To edit a chapter title, simply overwrite the existing chapter with a new one
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    ///  - title: The chapter title
    public func addChapter(at startTime: Int, title: String) {
        do {
            try parser.addChapter(startTime: startTime, title: title)
        } catch {
            print("WARNING: Unable to add chapters")
        }
    }
    
    /// Removes the chapter at the specified start time.
    /// - Parameters:
    ///  - startTime: The chapter start in milliseconds
    public func removeChapter(at startTime: Int) {
        do {
            try parser.removeChapter(startTime: startTime)
        } catch {
            print("WARNING: Unable to remove chapters")
        }
    }
    
    /// Removes all chapters.
    public func removeAllChapters() throws {
        do {
            try parser.removeAllChapters()
        } catch {
            print("WARNING: Unable to remove chapters")
        }
    }
}
