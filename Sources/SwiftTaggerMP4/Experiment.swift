//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 6/11/20.
//

import Foundation
import AVFoundation

/*
 @protocol AAPLAssetWriterInputSampleProvider <NSObject>
 
 @optional
 - (CMSampleBufferRef)copyNextSampleBuffer;
 - (AVTimedMetadataGroup *)copyNextTimedMetadataGroup;
 
 @end
 */

protocol AssetWriterInputSampleProvider {
    var copyNextSampleBuffer: CMSampleBuffer? { get }
    mutating func copyNextTimedMetadataGroup() -> AVTimedMetadataGroup?
}

/*
@end

@interface AVAssetReaderTrackOutput (SampleProvider) <AAPLAssetWriterInputSampleProvider>

@end

@interface AVMetadataSampleProvider : NSObject <AAPLAssetWriterInputSampleProvider>
{
    @private
    NSArray                    *metadataSamples;
    NSUInteger                currentSampleNum;
    NSUInteger                numOfSamples;
};

- (id)initWithMetadataSamples:(NSArray *)samples;

@end

@interface AVSampleBufferChannel : NSObject
{
    @private
    id<AAPLAssetWriterInputSampleProvider>    sampleProvider;
    AVAssetWriterInput                        *assetWriterInput;
    AVAssetWriterInputMetadataAdaptor        *assetWriterAdaptor;
    
    dispatch_block_t                        completionHandler;
    dispatch_queue_t                        serializationQueue;
    BOOL                                    finished;  // only accessed on serialization queue
    }
    
    - (id)initWithSampleProvider:(id<AAPLAssetWriterInputSampleProvider>)sampleProvider assetWriterInput:(AVAssetWriterInput *)assetWriterInput assetWriterAdaptor:(AVAssetWriterInputMetadataAdaptor *)adaptor;
- (void)startReadingAndWritingWithCompletionHandler:(dispatch_block_t)completionHandler;
- (void)cancel;

@end
*/

// I don't know what all this ^^^^ should be?

// @implementation AVMetadataSampleProvider
struct AVMetadataSampleProvider: AssetWriterInputSampleProvider {
    
    var copyNextSampleBuffer: CMSampleBuffer?
    

    var metadataSamples: [AVTimedMetadataGroup] // Not sure if this is right. Line 442 I don't know what this type should be, other than an array of some sort
    var numberOfSamples: Int
    var currentSampleNumber: Int = 0
    
    init(samples: [AVTimedMetadataGroup]) {

        self.metadataSamples = samples
        self.numberOfSamples = samples.count
    }
    
    mutating func copyNextTimedMetadataGroup() -> AVTimedMetadataGroup? {
        // doesn't conform
        var group: AVTimedMetadataGroup? = nil
        if currentSampleNumber < numberOfSamples {
            group = metadataSamples[currentSampleNumber]
            currentSampleNumber += 1
        }
        return group!
    }
}

//     @implementation AVSampleBufferChannel
struct AVSampleBufferChannel: AssetWriterInputSampleProvider {
    // not sure about the protocol?
    var copyNextSampleBuffer: CMSampleBuffer?
    var copyNextTimedMetadataGroup: AVTimedMetadataGroup?
    
    var sampleProvider: AVMetadataSampleProvider // not sure about this
    var assetWriterInput: AVAssetWriterInput // or this
    var assetWriterAdaptor: AVAssetWriterInputMetadataAdaptor?
    
    init(sampleProvider: AVMetadataSampleProvider, assetWriterInput: AVAssetWriterInput, assetWriterAdaptor: AVAssetWriterInputMetadataAdaptor?) {
        self.sampleProvider = sampleProvider
        self.assetWriterInput = assetWriterInput
        self.assetWriterAdaptor = assetWriterAdaptor
        
        while !finished {
            DispatchQueue(label: "serializationQueue", qos: .userInitiated)
        }
    }
        
    mutating func startReadingAndWritingWithCompletionHandler(localCompletionHandler: DispatchGroup ) // Not sure about this (dispatch_block_t)localCompletionHandler
    {
    
    let completionHandler = localCompletionHandler // ??? huh???
        assetWriterInput.requestMediaDataWhenReady(on: localCompletionHandler, using: <#T##() -> Void#>) // I have no idea what this should be
        
        if finished {
            return
        }
        
        var completedOrFailed: Bool = false
        
        while assetWriterInput.isReadyForMoreMediaData && !completedOrFailed {
            var sampleBuffer: CMSampleBuffer? = nil
            var metadataGroup: AVTimedMetadataGroup? = nil
            
            if assetWriterInput.mediaType == AVMediaType.metadata {
                metadataGroup = sampleProvider.copyNextTimedMetadataGroup()
            } else {
                sampleBuffer = sampleProvider.copyNextSampleBuffer
            }
            
            if sampleBuffer != nil {
                let success: Bool = assetWriterInput.append(sampleBuffer!)
                // CFRelease(sampleBuffer) - ????
                sampleBuffer = nil

                completedOrFailed = !success
            } else if metadataGroup != nil {
                let success: Bool = (assetWriterAdaptor?.append(metadataGroup!))!
                completedOrFailed = !success
            } else {
                completedOrFailed = true
            }
        }
        
        if completedOrFailed {
            callCompletionHandlerIfNecessary()
        }
    }
    
    func cancel() {
        serializationQueue.async {
            callCompletionHandlerIfNecessary()
        }
    }
    
    func callCompletionHandlerIfNecessary() {
        var oldFinished = finished // ???
        
        if oldFinished == false {
            assetWriterInput.markAsFinished()
/* Don't know what this is supposed to do
            if (completionHandler) {
                completionHandler();
            }
*/
        }
    }
}

struct TimedAnnotationWriter {
    
    var sourceAsset: AVAsset
    var destinationUrl: URL
    var metadataGroups: [AVTimedMetadataGroup] = []
    var serializationQueue: DispatchQueue
    
    
    init(asset: AVAsset, destinationUrl: URL) {
        self.sourceAsset = asset
        self.destinationUrl = destinationUrl
        serializationQueue = DispatchQueue(label: "serialization queue", qos: .userInitiated)
        let globalDispatchSemaphore = DispatchSemaphore(value: <#T##Int#>) // ???? Line 106
}
    
    mutating func writeMetadataGroups(metadataGroups: [AVTimedMetadataGroup]) throws {
        self.metadataGroups = metadataGroups
        
        serializationQueue.async {
            var success: Bool = true
            // NSError localError = nil ???
            
            success = self.sourceAsset.statusOfValue(forKey: "tracks", error: nil) == AVKeyValueStatus.loaded
            
            if success {
                let fileManager = FileManager.default
                let localOutputPath = self.destinationUrl.path
                if fileManager.fileExists(atPath: localOutputPath) {
                   try fileManager.removeItem(at: self.destinationUrl)
                }
            }
            // Line 143 Set up the AVAssetReader and AVAssetWriter, then begin writing samples or flag an error
            if success {
                success = setUpReaderAndWriterReturningError
            }
            if success {
                success = startReadingAndWritingReturningError
            }
            if !success {
                self.readingAndWritingDidFinishSuccessfully = success
            }
        }
    }
    
    func setUpReaderAndWriterReturningError() throws -> Bool {
        var success = true
        var localError: Error? = nil
        var localAsset = self.sourceAsset
        var localOutputUrl = self.destinationUrl
        
        // Line 163 Create asset reader and asset writer
        let assetReader = try AVAssetReader(asset: localAsset)
        success = (assetReader != nil)
        let assetWriter = try AVAssetWriter(outputURL: localOutputUrl, fileType: .m4a)
        // Line 171 Create asset reader outputs and asset writer inputs for the first audio track and first video track of the asset
        
        if success {
            var audioTrack: AVAssetTrack? = nil
            let audioTracks = localAsset.tracks(withMediaType: .audio)
            if audioTracks.count > 0 {
                audioTrack = audioTracks.first
            }
            // skip setting up video since we won't need it
            // Line 183 Setup passthrough for audio and video tracks
            if (audioTrack != nil) {
                let audioOutput = AVAssetReaderTrackOutput(
                    track: audioTrack!, outputSettings: nil)
                assetReader.add(audioOutput)
                
                let audioInput = AVAssetWriterInput(
                    mediaType: audioTrack!.mediaType, outputSettings: nil)
                
                let audioSampleBufferChannel = AVSampleBufferChannel(sampleProvider: audioOutput /* Cannot convert value of type 'AVAssetReaderTrackOutput' to expected argument type 'AVMetadataSampleProvider' */,
                    assetWriterInput: audioInput, assetWriterAdaptor: nil)

                // Line 207 Setup metadata track in order to write metadata samples
                // This is actually nested under the video portion of the original
                // but since I'm not dealing with video, I'm nesting it in audio
                
                let metadataFormatDescription: CMFormatDescription = // ????
                // The example for this is irrelevant to what I'm trying to do.
                // I need to get a format description from...I'm not sure.
                
                // Line 221 after a bunch of stuff I don't understand
                let assetWriterMetadataInput = AVAssetWriterInput(mediaType: .metadata, outputSettings: nil, sourceFormatHint: metadataFormatDescription)
                let assetWriterMetadataAdaptor = AVAssetWriterInputMetadataAdaptor(assetWriterInput: assetWriterMetadataInput)
                assetWriterMetadataInput.expectsMediaDataInRealTime = true
                assetWriterMetadataInput.addTrackAssociation(
                    withTrackOf: audioInput, type: AVAssetTrack.AssociationType.chapterList.rawValue)
                assetWriter.add(assetWriterMetadataInput)
                
                let metadataSampleProvider = AVMetadataSampleProvider(samples: metadataGroups)
                
                let metadataSampleBufferChannel = AVSampleBufferChannel(
                    sampleProvider: metadataSampleProvider,
                    assetWriterInput: assetWriterMetadataInput,
                    assetWriterAdaptor: assetWriterMetadataAdaptor)
            }
        }
        // else error not in place yet
        if !success && outError { // what is outError? Line 156
            outError = localError
            
            return success
        }
    }
    
    func startReadingAndWritingReturningError() throws -> Bool {
        var success: Bool = true
        var localError: Error? = nil
        
        // Line 251 Instruct the asset reader and asset writer to get ready to do work
        
        success = assetReader.startReading() // how? This is in the other functions
        success = assetWriter.startWriting()
        
        if success {
            assetWriter.startSession(atSourceTime: .zero)
            
            let dispatchGroup = DispatchGroup()
            
            if audioSampleBufferChannel { // Line 268 Where does this come from?
                dispatchGroup.enter()
                audioSampleBufferChannel.startReadingAndWritingWithCompletionHandler()
                dispatchGroup.leave
            }
            if metadataSampleBufferChannel {
                dispatchGroup.enter()
                metadataSampleBufferChannel.startReadingAndWritingWithCompletionHandler()
                dispatchGroup.leave()
            }
            // Lin2 287 Set up a callback for when the sample writing is finished
            // I don't know how to do this
            dispatchGroup.notify(queue: serializationQueue, execute: ( __ block)
            var finalSuccess: Bool = true
            var finalError: Error = nil
            
            if assetReader.status == .failed { // again, I can't get asset reader from here
                finalSuccess = false
                finalError = assetReader.error
            }
            
            if finalSuccess {
                dispatchGroup.enter()
                assetWriter.finishWritingWithCompletionHandler(
                    finalSuccess = assetWriter.status == AVAssetWriter.Status.completed // ????
                    dispatchGroup.leave()
                )
                dispatchGroup.wait()
                
                if !finalSuccess {
                    finalError = assetWriter.error
                    
                    self.readingAndWritingDidFinishSuccessfully

                }
                
                // Line 318 - dispatch_semaphore_signal(globalDispatchSemaphore); (yeah I got nothing)
            }

        }
        if !success && outError {
            outError = localError
            
            return success
        }
    }


    func readingAndWritingDidFinishSuccessfully(success: Bool) throws  {
        if !success {
            assetReader.cancelReading()
            assetWriter.cancelWriting()
            
            // throw an error
        }
    }

    /*
    @interface AVSampleBufferChannel ()
    
    - (void)callCompletionHandlerIfNecessary;  // always called on the serialization queue
    
    @end
    */
    // No idea about this.

}
