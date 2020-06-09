//
//  ChapterHandler.swift
//  
//
//  Created by Nolaine Crusher on 6/9/20.
//

import Foundation
import AVFoundation
import Cocoa

struct TableOfContents {

    var chapters: [AVTimedMetadataGroup]
    
    init(mp4File: Mp4File) throws {
        let asset = mp4File.asset
        let chapterLocalesKey = "availableChapterLocales"
        
        // Asynchronous weirdness begins here.
        var result: Result<AVKeyValueStatus, Error> = .success(.loaded)
        var inProgress = true

        asset.loadValuesAsynchronously(forKeys: [chapterLocalesKey]) {
            defer { inProgress = false }
            
            var error: NSError? = nil
            let status = asset.statusOfValue(forKey: chapterLocalesKey, error: &error)
            if let failure = error {
                result = .failure(failure)
            } else {
                result = .success(status)
            }
        }
        while inProgress {
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        }
        // Asynchronous weirdness ends here.
        
        var chapterGroup: [AVTimedMetadataGroup] = []
        switch result {
            case .failure(let error):
                throw error
            case .success(let status):
                switch status {
                    case .loaded:
                        let languages = Locale.preferredLanguages
                        chapterGroup = asset.chapterMetadataGroups(
                            bestMatchingPreferredLanguages: languages)
                        inProgress = false
                    case .loading: fatalError("Status 'loading' should not coincide with result 'success'")
                    case .cancelled: throw Mp4File.Error.LoadingCancelled
                    case .unknown: fatalError("Status 'unknown' should not coincide with result 'success'")
                    case .failed: throw Mp4File.Error.LoadingError
                    @unknown default: inProgress = false
            }
        }
        self.chapters = chapterGroup
    }
    
    /// a public-facing type for handling the Chapter frame in a more intuitive manner
    struct Chapter {
        var chapterTitle: String?
        var chapterThumbnail: NSImage?

        init(title: String?) {
            self.chapterTitle = title
        }
        
        init() {}
    }

    func convertTimedMetadataGroupsToChapters(groups: [AVTimedMetadataGroup]) -> [Chapter] {
        return groups.map { group -> Chapter in
            // Retrieve AVMetadataCommonIdentifierTitle metadata items
            let titleItems = AVMetadataItem.metadataItems(from: group.items, filteredByIdentifier: AVMetadataIdentifier.commonIdentifierTitle)
            
            // Retrieve AVMetadataCommonIdentifierTitle metadata items
            let artworkItems = AVMetadataItem.metadataItems(from: group.items, filteredByIdentifier: AVMetadataIdentifier.commonIdentifierArtwork)
            
            var chapter = Chapter()
            
            if let titleValue = titleItems.first?.stringValue {
                chapter = Chapter(title: titleValue)
            }
            
            if let imageData = artworkItems.first?.dataValue,
                let image = NSImage(data: imageData) {
                chapter.chapterThumbnail = image
            }
            
            return chapter
        }
    }
}
