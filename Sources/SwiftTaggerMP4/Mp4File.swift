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
    
    @available(OSX 10.15, *)
    public func write(
        using tag: Tag,
        writingTo url: URL,
        fileType: AVFileType) throws {
        var error: Bool = false
        var inProgress: Bool = true

        if FileManager.default.fileExists(atPath: url.path) {
            try FileManager.default.removeItem(at: url)
        }

        if let toc = tag.tableOfContents.timedMetadataGroups, !toc.isEmpty {
            try writeFileUsingAssetWriter(tag: tag, url: url, fileType: fileType)
        } else {
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
        }
    }
    
    @available(OSX 10.15, *)
    private func writeFileUsingAssetWriter(
        tag: Tag,
        url: URL,
        fileType: AVFileType) throws {
        
        let reader = try AVAssetReader(asset: self.asset)
        let writer = try AVAssetWriter(outputURL: url, fileType: fileType)

        // set up pass-through for audio file
        if let audioTrack = asset.tracks(withMediaType: .audio).first {
            let audioOutput = AVAssetReaderTrackOutput(
                track: audioTrack, outputSettings: nil)
            reader.add(audioOutput)
            let audioFormatDescription = audioTrack.formatDescriptions.first
            let audioInput = AVAssetWriterInput(
                mediaType: audioTrack.mediaType,
                outputSettings: nil,
                sourceFormatHint: audioFormatDescription as! CMFormatDescription)
            audioInput.metadata = tag.metadata
            writer.add(audioInput)
            // initialize audio buffer channel
            let audioBuffer = SampleBufferChannel(
                audioProvider: audioOutput,
                assetWriterInput: audioInput)

            // prepare metadata buffer
//            var formatDescription: CMFormatDescription?
//            let chapterGroups = tag.tableOfContents.timedMetadataGroups ?? []
//            if let firstChapter = chapterGroups.first {
//                formatDescription = firstChapter.copyFormatDescription()
//            }

            let formatDescription = try CMTextFormatDescription(mediaType: .text, mediaSubType: .init(string: "text"))
 
            let metadataInput = AVAssetWriterInput(
                mediaType: .text,
                outputSettings: nil,
                sourceFormatHint: formatDescription)

            // initialize metadata adaptor
            let adaptor = AVAssetWriterInputMetadataAdaptor(
                assetWriterInput: metadataInput)
            audioInput.addTrackAssociation(
                withTrackOf: metadataInput,
                type: AVAssetTrack.AssociationType.chapterList.rawValue)

            writer.add(metadataInput)

            // initialize metadata buffer channel
            let chapterProvider = ChapterGroupProvider(
                chapters: tag.tableOfContents.timedMetadataGroups ?? [])
            let metadataBuffer = SampleBufferChannel(
                chapterProvider: chapterProvider,
                assetWriterInput: metadataInput,
                assetWriterAdaptor: adaptor)
            // Instruct the asset reader and asset writer to get ready to do work
            guard reader.startReading() else {
                throw reader.error!
            }
            guard writer.startWriting() else {
                throw writer.error!
            }
            
            // Start a sample-writing session
            writer.startSession(atSourceTime: .zero)

            let dispatchGroup = DispatchGroup()
            
            // Start reading and writing samples
            dispatchGroup.enter()
            audioBuffer.startReadingAndWriting(withCompletionHandler: {
                dispatchGroup.leave()
            })
            dispatchGroup.enter()
            metadataBuffer.startReadingAndWriting(withCompletionHandler: {
                dispatchGroup.leave()
            })
            
            var success: Bool = true
            
            if reader.status == .failed {
                success = false
                throw Mp4File.Error.ReadingError
            }

            if success {
                dispatchGroup.enter()
                writer.finishWriting(completionHandler: {
                    success = writer.status == .completed
                    dispatchGroup.leave()
                })
                dispatchGroup.wait()
                if !success {
                    throw Mp4File.Error.WritingError
                }
            }
        }
    }
}

private class SampleBufferChannel {
    
    private var audioProvider: AVAssetReaderOutput?
    private var chapterProvider: ChapterGroupProvider?
    private var assetWriterInput: AVAssetWriterInput
    private var assetWriterAdaptor: AVAssetWriterInputMetadataAdaptor?
    
    private var completionHandler: (() -> Void)!
    private var serializationQueue: DispatchQueue
    private var finished: Bool  // only accessed on serialization queue
    
    // initializer for audio buffer
    internal init(
        audioProvider: AVAssetReaderOutput?,
        assetWriterInput: AVAssetWriterInput) {
        self.audioProvider = audioProvider
        self.assetWriterInput = assetWriterInput
        
        finished = false
        let serializationQueueDescription = "\(SampleBufferChannel.self) serialization queue"
        serializationQueue = DispatchQueue(label: serializationQueueDescription)
    }
    
    // initializer for metadata buffer
    internal init(
        chapterProvider: ChapterGroupProvider,
        assetWriterInput: AVAssetWriterInput,
        assetWriterAdaptor: AVAssetWriterInputMetadataAdaptor?) {
        self.chapterProvider = chapterProvider
        self.assetWriterInput = assetWriterInput
        self.assetWriterAdaptor = assetWriterAdaptor
        
        finished = false
        let serializationQueueDescription = "\(SampleBufferChannel.self) serialization queue"
        serializationQueue = DispatchQueue(label: serializationQueueDescription)
    }
    
    fileprivate func startReadingAndWriting(withCompletionHandler completionHandler: @escaping () -> Void) {
        self.completionHandler = completionHandler
        
        assetWriterInput.requestMediaDataWhenReady(on: serializationQueue, using: {
            
            if self.finished {
                return
            }
            
            var completedOrFailed = false
            
            // Read samples in a loop as long as the asset writer input is ready
            while self.assetWriterInput.isReadyForMoreMediaData && !completedOrFailed {
                var sampleBuffer: CMSampleBuffer?
                var metadataGroup: AVTimedMetadataGroup?
                if self.assetWriterInput.mediaType == .text || self.assetWriterInput.mediaType == .metadata {
                    metadataGroup = self.chapterProvider?.nextChapter
                } else {
                    sampleBuffer = self.audioProvider?.copyNextSampleBuffer()
                }
                
                if let localSampleBuffer = sampleBuffer {
                    let success = self.assetWriterInput.append(localSampleBuffer)
                    sampleBuffer = nil
                    
                    completedOrFailed = !success
                } else if let metadataGroup = metadataGroup {
                    let success = self.assetWriterAdaptor?.append(metadataGroup) ?? false
                    completedOrFailed = !success
                } else {
                    completedOrFailed = true
                }
            }
            
            if completedOrFailed {
                self.callCompletionHandlerIfNecessary()
            }
        })
    }
    
    private func cancel() {
        serializationQueue.async {
            self.callCompletionHandlerIfNecessary()
        }
    }
    
    private func callCompletionHandlerIfNecessary() { // always called on the serialization queue
        // Set state to mark that we no longer need to call the completion handler, grab the completion handler, and clear out the ivar
        let oldFinished = finished
        finished = true;
        
        if !oldFinished {
            assetWriterInput.markAsFinished()  // let the asset writer know that we will not be appending any more samples to this input
            
            completionHandler()
        }
    }
}

private class ChapterGroupProvider {
    
    private var chapterSamples: [AVTimedMetadataGroup]
    private var currentChapter: Int
    private var totalChapters: Int
    
    fileprivate init(chapters: [AVTimedMetadataGroup]) {
        self.chapterSamples = chapters
        totalChapters = chapters.count
        currentChapter = 0
    }
    
    fileprivate var nextChapter: AVTimedMetadataGroup? {
        var group: AVTimedMetadataGroup?
        if currentChapter < totalChapters {
            group = chapterSamples[currentChapter]
            currentChapter += 1
        }
        return group
    }
}

