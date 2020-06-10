//
//  Mp4File.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import AVFoundation

@available(OSX 10.13, *)
public struct Mp4File {
    
    public let location: URL
    var asset: AVAsset
    
    public init(location: URL) throws {
        let validExtensions = ["mp4","aac", "m4a", "m4b"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
            self.location = location
        } else {
            throw Mp4File.Error.InvalidFileFormat
        }
        self.asset = AVAsset(url: location)
    }
    
    public mutating func write(using tag: Tag, writingTo url: URL, fileType: AVFileType) throws {
        var error: Bool = false
        var inProgress: Bool = true

        if FileManager.default.fileExists(atPath: url.path) {
            try FileManager.default.removeItem(at: url)
        }

        // get the source audio track
        let audioTrack = asset.tracks(withMediaType: .audio).first
        let audioDesc = audioTrack?.formatDescriptions.first as! CMFormatDescription
        
        // turn it into an Input
        let audioInput = AVAssetWriterInput(
            mediaType: .audio,
            outputSettings: nil,
            sourceFormatHint: audioDesc)
        
        
        let writer = try AVAssetWriter(outputURL: url, fileType: .m4a)
        writer.startWriting()

        for group in tag.tableOfContents.timedMetadataGroups ?? [] {
            let desc = group.copyFormatDescription()
            // create text input
            let textInput = AVAssetWriterInput(mediaType: .text,
                                               outputSettings: nil,
                                               sourceFormatHint: desc)
            textInput.marksOutputTrackAsEnabled = false
            
            if audioInput.canAddTrackAssociation(
                withTrackOf: textInput, type: AVAssetTrack.AssociationType.chapterList.rawValue) {
                audioInput.addTrackAssociation(
                    withTrackOf: textInput, type: AVAssetTrack.AssociationType.chapterList.rawValue)
            }
            
            if writer.canAdd(textInput) {
                writer.add(textInput)
            }
        }
        
        if writer.canAdd(audioInput) {
            writer.add(audioInput)
        }
        
        writer.finishWriting(completionHandler: {
            if writer.status == .failed {
                error = true
            }
            inProgress = false
        })
        
        while inProgress {
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        }
        
        if error == true {
            throw Mp4File.Error.WritingError
        }


/*
        let exportSession = AVAssetExportSession(
            asset: self.asset,
            presetName: AVAssetExportPresetPassthrough)
        exportSession?.outputURL = url
        exportSession?.outputFileType = fileType
        exportSession?.metadata = tag.metadata
        exportSession?.exportAsynchronously(completionHandler: {
            if exportSession?.status == .failed {
                error = true
            }
            inProgress = false
        })

        while inProgress {
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        }

        if error == true {
            throw Mp4File.Error.WritingError
        }
*/

    }
    
    
}
