import XCTest
import Cocoa
import AVFoundation
@testable import SwiftTaggerMP4

@available(OSX 10.13, *)
final class SwiftTaggerMP4Tests: XCTestCase {
    func testReading() throws {
        let reading = try tag(withMeta: true)
        
        XCTAssertEqual(reading.acknowledgment, "Acknowledgment")
        XCTAssertEqual(reading.album, "Album")
        XCTAssertEqual(reading.albumArtist, "AlbumArtist")
        XCTAssertEqual(reading.albumArtistSort, "SortAlbumArtist")
        XCTAssertEqual(reading.albumSort, "SortAlbum")
        XCTAssertEqual(reading.arranger, "Arranger")
        XCTAssertEqual(reading.artDirector, "ArtDirector")
        XCTAssertEqual(reading.artist, "Artist")
        XCTAssertEqual(reading.artistSort, "SortArtist")
        XCTAssertEqual(reading.artistWebpage, "http://artist.url")
        XCTAssertEqual(reading.audioFileWebpage, "http://audiofile.url")
        XCTAssertEqual(reading.audioSourceWebpage, "http://audiosource.url")
        XCTAssertEqual(reading.bpm, 99)
        XCTAssertEqual(reading.comment, "Comments")
        XCTAssertEqual(reading.compilation, true)
        XCTAssertEqual(reading.composer, "Composer")
        XCTAssertEqual(reading.composerSort, "SortComposer")
        XCTAssertEqual(reading.conductor, "Conductor")
        XCTAssertEqual(reading.contentRating, .clean)
        XCTAssertEqual(reading.copyright, "2020 Copyright")
        XCTAssertEqual(reading.description, "Description")
        XCTAssertEqual(reading.discNumber, [3,4])
        XCTAssertEqual(reading.encodingTool, "EncodedBy")
        XCTAssertEqual(reading.encodingSettings, "EncoderSettings")
        XCTAssertEqual(reading.episodeNumber, 5)
        XCTAssertEqual(reading.episodeTitle, "EpisodeTitle")
        XCTAssertEqual(reading.executiveProducer, "ExecutiveProducer")
        XCTAssertEqual(reading.genre, "Genre")
        XCTAssertEqual(reading.initialKey, nil)
        XCTAssertEqual(reading.language, [.eng])
        XCTAssertEqual(reading.linerNotes, "LinerNotes")
        XCTAssertEqual(reading.longDescription, "LongDescription")
        XCTAssertEqual(reading.lyrics, "Lyrics")
        XCTAssertEqual(reading.mediaType, .music)
        XCTAssertEqual(reading.movementName, "MovementName")
        XCTAssertEqual(reading.movementNumber, 7)
        XCTAssertEqual(reading.totalMovements, 8)
        XCTAssertEqual(reading.network, "Network")
        XCTAssertEqual(reading.onlineExtras, "www.onlineextras.com")
        XCTAssertEqual(reading.originalAlbum, "OriginalAlbum")
        XCTAssertEqual(reading.originalArtist, "OriginalArtist")
        XCTAssertEqual(reading.originalFilename, "OriginalFilename")
        XCTAssertEqual(reading.originalLyricist, "OriginalLyricist")
        XCTAssertEqual(reading.paymentWebpage, "http://payment.url")
        XCTAssertEqual(reading.performer, "Performer")
        XCTAssertEqual(reading.podcast, true)
        XCTAssertEqual(reading.podcastCategory, "Category")
        XCTAssertEqual(reading.podcastKeywords, ["Keywords"])
        XCTAssertEqual(reading.podcastUrl, "http://podcastfeed.url")
        XCTAssertEqual(reading.phonogramRights, "PhonogramRights")
        XCTAssertEqual(reading.publisher, "Publisher")
        XCTAssertEqual(reading.publisherWebpage, "http://publisher.url")
        XCTAssertEqual(reading.radioStationWebpage, "http://radiostation.url")
        XCTAssertEqual(reading.recordCompany, "Label")
        XCTAssertEqual(reading.season, 6)
        XCTAssertEqual(reading.seriesName, "SeriesTitle")
        XCTAssertEqual(reading.seriesSort, "SortSeries")
        XCTAssertEqual(reading.seriesDescription, "SeriesDescription")
        XCTAssertEqual(reading.soloist, "Soloist")
        XCTAssertEqual(reading.soundEngineer, "SoundEngineer")
        XCTAssertEqual(reading.sourceCredit, "Credits")
        XCTAssertEqual(reading.trackNumber, [1,2])
        XCTAssertEqual(reading.thanks, "Thanks")
        XCTAssertEqual(reading.title, "Title")
        XCTAssertEqual(reading.titleSort, "SortName")

        XCTAssertEqual(reading.recordingDate?.year, 1999)
        XCTAssertEqual(reading.recordingDate?.month, 05)
        XCTAssertEqual(reading.recordingDate?.day, 08)

        XCTAssertEqual(reading.purchaseDate?.year, 1999)
        XCTAssertEqual(reading.purchaseDate?.month, 06)
        XCTAssertEqual(reading.purchaseDate?.day, 08)

        XCTAssertEqual(reading.taggingTime?.year, 1997)
        XCTAssertEqual(reading.taggingTime?.month, 06)
        XCTAssertEqual(reading.taggingTime?.day, 07)

        XCTAssertEqual(reading.encodingTime?.year, 1996)
        XCTAssertEqual(reading.encodingTime?.month, 08)
        XCTAssertEqual(reading.encodingTime?.day, 09)
        
    }
    
    func testWriting() throws {
        var writing = try tag(withMeta: false)
        
        writing.acknowledgment = "ACKNOWLEDGMENT"
        writing.album = "ALBUM"
        writing.albumArtist = "ALBUMARTIST"
        writing.albumArtistSort = "SORTALBUMARTIST"
        writing.albumSort = "SORTALBUM"
        writing.arranger = "ARRANGER"
        writing.artDirector = "ARTDIRECTOR"
        writing.artist = "ARTIST"
        writing.artistSort = "SORTARTIST"
        writing.artistWebpage = "WWW.ARTIST.URL"
        try writing.setCoverImage(to: fileVersion.cover.url)
        writing.audioFileWebpage = "WWW.AUDIOF.URL"
        writing.audioSourceWebpage = "WWW.AUDIOS.URL"
        writing.bpm = 97
        writing.comment = "COMMENT"
        writing.compilation = true
        writing.composer = "COMPOSER"
        writing.composerSort = "SORTCOMPOSER"
        writing.conductor = "CONDUCTOR"
        writing.contentAdvisory = .ustvUnrated
        writing.contentRating = .clean
        writing.copyright = "2020 COPYRIGHT"
        writing.copyrightWebpage = "COPYRIGHT.URL"
        writing.description = "DESCRIPTION"
        writing.director = "DIRECTOR"
        writing.discNumber = [1,2]
        writing.encodedBy = "ENCODED BY"
        writing.encodingTool = "ENCODING TOOL"
        writing.episodeNumber = 3
        writing.episodeTitle = "EPISODE TITLE"
        writing.executiveProducer = "EXEC PRODUCER"
        writing.genre = "GENRE"
        writing.genreID = .audiobooks
        writing.initialKey = .aMajor
        writing.isrc = 123456789012
        writing.language = [.eng, .und]
        writing.linerNotes = "LINER NOTES"
        writing.longDescription = "LONG DESCRIPTION"
        writing.lyrics = "LYRICS"
        writing.mediaType = .audiobook
        writing.mood = "MOOD"
        writing.movementName = "MOVEMENT NAME"
        writing.movementNumber = 5
        writing.totalMovements = 6
        writing.narrator = "NARRATOR"
        writing.network = "NETWORK"
        writing.onlineExtras = "HTTP://ONLINEEXTRAS.URL"
        writing.originalAlbum = "ORIGINAL ALBUM"
        writing.originalArtist = "ORIGINAL ARTIST"
        writing.originalFilename = "ORIGINAL FILENAME"
        writing.originalLyricist = "ORIGINAL LYRICIST"
        writing.paymentWebpage = "WWW.PAYMENT.URL"
        writing.performer = "PERFORMER"
        writing.phonogramRights = "PHONOGRAM RIGHTS"
        writing.podcast = true
        writing.podcastCategory = "PODCAST CATEGORY"
        writing.podcastKeywords = ["PODCAST","KEYWORDS"]
        writing.podcastID = "PODCAST ID"
        writing.podcastDescription = "PODCAST DESCRIPTION"
        writing.podcastUrl = "WWW.PODCAST.URL"
        writing.predefinedGenre = .audiobooksNews
        writing.producer = "PRODUCER"
        writing.publisher = "PUBLISHER"
        writing.publisherWebpage = "PUBLISHER.URL"
        writing.radioStation = "RADIO STATION"
        writing.radioStationOwner = "RADIO STATION OWNER"
        writing.radioStationWebpage = "RADIOSTATION.URL"
        writing.recordCompany = "RECORD COMPANY"
        writing.seriesName = "SERIES"
        writing.seriesDescription = "SERIES DESCRIPTION"
        writing.season = 4
        writing.seriesSort = "SORT SERIES"
        writing.soloist = "SOLOIST"
        writing.soundEngineer = "SOUND ENGINEER"
        writing.sourceCredit = "SOURCE CREDIT"
        writing.trackNumber = [7,8]
        writing.trackSubtitle = "TRACK SUBTITLE"
        writing.thanks = "THANKS"
        writing.title = "TITLE"
        writing.titleSort = "SORT TITLE"
        writing.work = "WORK"

        writing.encodingTime?.year = 2000
        writing.encodingTime?.month = 10
        writing.encodingTime?.day = 13

        writing.releaseDate?.year = 1999
        writing.releaseDate?.month = 05
        writing.releaseDate?.day = 08
        
        writing.recordingDate?.year = 1998
        writing.recordingDate?.month = 06
        writing.recordingDate?.day = 09
        
        writing.purchaseDate?.year = 1997
        writing.purchaseDate?.month = 07
        writing.purchaseDate?.day = 10
        
        writing.originalReleaseYear = 1996

        writing.taggingTime?.year = 1995
        writing.taggingTime?.month = 09
        writing.taggingTime?.day = 12
        
        writing.year = 1994

        let output = try localDirectory(fileName: "testfile", fileExtension: "m4a")
        var file = try mp4File(withMeta: false)
        try file.write(using: writing, writingTo: output, fileType: .m4a)
        
        let testFile = try Mp4File(location: output)
        let testing = try Tag(from: testFile)
        
        XCTAssertEqual(testing.acknowledgment, "ACKNOWLEDGMENT")
        XCTAssertEqual(testing.album, "ALBUM")
        XCTAssertEqual(testing.albumArtist, "ALBUMARTIST")
        XCTAssertEqual(testing.albumArtistSort, "SORTALBUMARTIST")
        XCTAssertEqual(testing.albumSort, "SORTALBUM")
        XCTAssertEqual(testing.arranger, "ARRANGER")
        XCTAssertEqual(testing.artDirector, "ARTDIRECTOR")
        XCTAssertEqual(testing.artist, "ARTIST")
        XCTAssertEqual(testing.artistSort, "SORTARTIST")
        XCTAssertEqual(testing.artistWebpage, "WWW.ARTIST.URL")
        XCTAssertEqual(testing.audioFileWebpage, "WWW.AUDIOF.URL")
        XCTAssertEqual(testing.audioSourceWebpage, "WWW.AUDIOS.URL")
        XCTAssertEqual(testing.bpm, 97)
        XCTAssertEqual(testing.comment, "COMMENT")
        XCTAssertEqual(testing.compilation, true)
        XCTAssertEqual(testing.composer, "COMPOSER")
        XCTAssertEqual(testing.composerSort, "SORTCOMPOSER")
        XCTAssertEqual(testing.conductor, "CONDUCTOR")
        XCTAssertEqual(testing.contentAdvisory, .ustvUnrated)
        XCTAssertEqual(testing.contentRating, .clean)
        XCTAssertEqual(testing.copyright, "2020 COPYRIGHT")
        XCTAssertEqual(testing.copyrightWebpage, "COPYRIGHT.URL")
        XCTAssertEqual(testing.description, "DESCRIPTION")
        XCTAssertEqual(testing.director, "DIRECTOR")
        XCTAssertEqual(testing.discNumber, [1,2])
        XCTAssertEqual(testing.encodedBy, "ENCODED BY")
        XCTAssertEqual(testing.encodingTool, "ENCODING TOOL")
        XCTAssertEqual(testing.episodeNumber, 3)
        XCTAssertEqual(testing.episodeTitle, "EPISODE TITLE")
        XCTAssertEqual(testing.executiveProducer, "EXEC PRODUCER")
        XCTAssertEqual(testing.genre, "GENRE")
        XCTAssertEqual(testing.genreID, .audiobooks)
        XCTAssertEqual(testing.initialKey, .aMajor)
        XCTAssertEqual(testing.isrc, 123456789012)
        XCTAssertEqual(testing.language, [.eng, .und])
        XCTAssertEqual(testing.linerNotes, "LINER NOTES")
        XCTAssertEqual(testing.longDescription, "LONG DESCRIPTION")
        XCTAssertEqual(testing.lyrics, "LYRICS")
        XCTAssertEqual(testing.mediaType, .audiobook)
        XCTAssertEqual(testing.mood, "MOOD")
        XCTAssertEqual(testing.movementName, "MOVEMENT NAME")
        XCTAssertEqual(testing.movementNumber, 5)
        XCTAssertEqual(testing.totalMovements, 6)
        XCTAssertEqual(testing.narrator, "NARRATOR")
        XCTAssertEqual(testing.network, "NETWORK")
        XCTAssertEqual(testing.onlineExtras, "HTTP://ONLINEEXTRAS.URL")
        XCTAssertEqual(testing.originalArtist, "ORIGINAL ARTIST")
        XCTAssertEqual(testing.originalAlbum, "ORIGINAL ALBUM")
        XCTAssertEqual(testing.originalFilename, "ORIGINAL FILENAME")
        XCTAssertEqual(testing.originalLyricist, "ORIGINAL LYRICIST")
        XCTAssertEqual(testing.paymentWebpage, "WWW.PAYMENT.URL")
        XCTAssertEqual(testing.performer, "PERFORMER")
        XCTAssertEqual(testing.phonogramRights, "PHONOGRAM RIGHTS")
        XCTAssertEqual(testing.podcast, true)
        XCTAssertEqual(testing.podcastCategory, "PODCAST CATEGORY")
        XCTAssertEqual(testing.podcastDescription, "PODCAST DESCRIPTION")
        XCTAssertEqual(testing.podcastID, "PODCAST ID")
        XCTAssertEqual(testing.podcastKeywords, ["PODCAST", "KEYWORDS"])
        XCTAssertEqual(testing.podcastUrl, "WWW.PODCAST.URL")
        XCTAssertEqual(testing.predefinedGenre, .audiobooksNews)
        XCTAssertEqual(testing.producer, "PRODUCER")
        XCTAssertEqual(testing.publisher, "PUBLISHER")
        XCTAssertEqual(testing.publisherWebpage, "PUBLISHER.URL")
        XCTAssertEqual(testing.radioStation, "RADIO STATION")
        XCTAssertEqual(testing.radioStationOwner, "RADIO STATION OWNER")
        XCTAssertEqual(testing.radioStationWebpage, "RADIOSTATION.URL")
        XCTAssertEqual(testing.recordCompany, "RECORD COMPANY")
        XCTAssertEqual(testing.season, 4)
        XCTAssertEqual(testing.seriesName, "SERIES")
        XCTAssertEqual(testing.seriesDescription, "SERIES DESCRIPTION")
        XCTAssertEqual(testing.seriesSort, "SORT SERIES")
        XCTAssertEqual(testing.soloist, "SOLOIST")
        XCTAssertEqual(testing.soundEngineer, "SOUND ENGINEER")
        XCTAssertEqual(testing.sourceCredit, "SOURCE CREDIT")
        XCTAssertEqual(testing.thanks, "THANKS")
        XCTAssertEqual(testing.title, "TITLE")
        XCTAssertEqual(testing.titleSort, "SORT TITLE")
        XCTAssertEqual(testing.trackNumber, [7,8])
        XCTAssertEqual(testing.trackSubtitle, "TRACK SUBTITLE")
        XCTAssertEqual(testing.work, "WORK")
        
        let coverArtImage = testing.coverImage
        XCTAssertNoThrow(try coverArtImage?.save(directory: output.deletingLastPathComponent(), fileName: "testimage"))
        XCTAssertTrue(FileManager.default.fileExists(atPath: output.deletingLastPathComponent().appendingPathComponent("testimage.png").path))

        XCTAssertEqual(writing.encodingTime?.year,2000)
        XCTAssertEqual(writing.encodingTime?.month, 10)
        XCTAssertEqual(writing.encodingTime?.day, 13)
        
        XCTAssertEqual(writing.releaseDate?.year, 1999)
        XCTAssertEqual(writing.releaseDate?.month, 05)
        XCTAssertEqual(writing.releaseDate?.day, 08)
        
        XCTAssertEqual(writing.recordingDate?.year, 1998)
        XCTAssertEqual(writing.recordingDate?.month, 06)
        XCTAssertEqual(writing.recordingDate?.day, 09)
        
        XCTAssertEqual(writing.purchaseDate?.year, 1997)
        XCTAssertEqual(writing.purchaseDate?.month, 07)
        XCTAssertEqual(writing.purchaseDate?.day, 10)
        
        XCTAssertEqual(writing.originalReleaseYear, 1996)
        
        XCTAssertEqual(writing.taggingTime?.year, 1995)
        XCTAssertEqual(writing.taggingTime?.month, 09)
        XCTAssertEqual(writing.taggingTime?.day, 12)
        
        XCTAssertEqual(writing.year,1994)
    }
    
    func testChapterReading() throws {
        XCTAssertNoThrow(tagChapterized)
        let toc = try tagChapterized().toc
        XCTAssertEqual(toc.chapters.count, 2)
        for chapter in toc.sortedChapters() {
            print(chapter.startTime)
        }
    }
 

    func testTracks() throws {
        let asset = try mp4Chapterized().asset
        var tag = try tagChapterized()
//        let toc = tag.toc

        tag.removeAllChapters()
        tag.addChapter(at: 1500, title: "Chapter 01")
        tag.addChapter(at: 3000, title: "Chapter 02")
        tag.addChapter(at: 4500, title: "Chapter 03")

        let chapterGroups = tag.tableOfContents.timedMetadataGroups ?? []
        
        let chapterWriter = ChapterWriter(asset: asset)
        chapterWriter.write(chapters: chapterGroups)

    }
}

private protocol AssetWriterInputSampleProvider {
    
    var nextSampleBuffer: CMSampleBuffer? { get }
    var nextTimedMetadataGroup: AVTimedMetadataGroup? { get }
}

private class AssetReaderTrackOutput: AVAssetReaderTrackOutput, AssetWriterInputSampleProvider {
    var nextSampleBuffer: CMSampleBuffer?
    var nextTimedMetadataGroup: AVTimedMetadataGroup?
}

private class SampleBufferChannel {
    
    private var sampleProvider: AssetWriterInputSampleProvider
    private var assetWriterInput: AVAssetWriterInput
    private var assetWriterAdaptor: AVAssetWriterInputMetadataAdaptor?
    
    private var completionHandler: (() -> Void)!
    private var serializationQueue: DispatchQueue
    private var finished: Bool  // only accessed on serialization queue
    
    internal init(
        sampleProvider: AssetWriterInputSampleProvider,
        assetWriterInput: AVAssetWriterInput,
        assetWriterAdaptor adaptor: AVAssetWriterInputMetadataAdaptor?
    ) {
        self.sampleProvider = sampleProvider
        self.assetWriterInput = assetWriterInput
        self.assetWriterAdaptor = adaptor
        
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
                    metadataGroup = self.sampleProvider.nextTimedMetadataGroup
                } else {
                    sampleBuffer = self.sampleProvider.nextSampleBuffer
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

private class ChapterGroupProvider: AssetWriterInputSampleProvider {
    
    
    private var chapterSamples: [AVTimedMetadataGroup]
    private var currentChapter: Int
    private var totalChapters: Int
    
    fileprivate init(chapters: [AVTimedMetadataGroup]) {
        self.chapterSamples = chapters
        totalChapters = chapters.count
        currentChapter = 0
    }
    
    fileprivate var nextSampleBuffer: CMSampleBuffer?
    fileprivate var nextTimedMetadataGroup: AVTimedMetadataGroup? {
        var group: AVTimedMetadataGroup?
        if currentChapter < totalChapters {
            group = chapterSamples[currentChapter]
            currentChapter += 1
        }
        return group
    }
}

internal class ChapterWriter {
    
    private var serializationQueue: DispatchQueue
    private var globalDispatchSemaphore: DispatchSemaphore
    
    // All of these are created, accessed, and torn down exclusively on the serializaton queue
    private var assetReader: AVAssetReader!
    private var assetWriter: AVAssetWriter!
    
    private var audioSampleBufferChannel: SampleBufferChannel!
    private var chapterSampleBufferChannel: SampleBufferChannel!
    
    private var sourceAsset: AVAsset!
    private var chapters: [AVTimedMetadataGroup] = []
    private var destinationURL: URL
    
    internal init(asset: AVAsset) {
        sourceAsset = asset
        
        let serializationQueueDescription = "\(ChapterWriter.self) serialization queue"
        serializationQueue = DispatchQueue(label: serializationQueueDescription)
        
        globalDispatchSemaphore = DispatchSemaphore(value: 0)
        
        // The temporary path for the audio
        destinationURL = URL(fileURLWithPath: "\(NSTemporaryDirectory())chaptertestfile.m4a")
    }
    
    internal var outputURL: URL {
        return destinationURL
    }
    
    internal func write(chapters: [AVTimedMetadataGroup]) {
        self.chapters = chapters
        
        serializationQueue.async {
            
            var localError: NSError?
            guard self.sourceAsset.statusOfValue(forKey: "tracks", error: &localError) == .loaded else {
                self.readingAndWritingDidFinishSuccessfully(error: localError)
                return
            }
            
            do {
                // AVAssetWriter does not overwrite files for us, so remove the destination file if it already exists
                let fm = FileManager.default
                let localOutputPath = self.destinationURL.path
                if fm.fileExists(atPath: localOutputPath) {
                    try fm.removeItem(atPath: localOutputPath)
                }
                
                // Set up the AVAssetReader and AVAssetWriter, then begin writing samples or flag an error
                try self.setUpReaderAndWriter()
                try self.startReadingAndWriting()
            } catch {
                self.readingAndWritingDidFinishSuccessfully(error: error)
            }
        }
        
        // Wait for export to complete so we can return movie URL
        globalDispatchSemaphore.wait()
    }
    
    private func setUpReaderAndWriter() throws {
        let localAsset = sourceAsset!
        let localOutputURL = destinationURL
        
        // Create asset reader and asset writer
        assetReader = try AVAssetReader(asset: localAsset)
        assetWriter = try AVAssetWriter(url: localOutputURL, fileType: .mov)
        
        // Create asset reader outputs and asset writer inputs for the first audio track of the asset
        var audioTrack: AVAssetTrack? = nil
        
        // Grab first audio track, if the asset has one
        let audioTracks = localAsset.tracks(withMediaType: .audio)
        audioTrack = audioTracks.first
        
        // Setup passthrough for audio track
        if let audioTrack = audioTrack {
            let audioOutput = AssetReaderTrackOutput(track: audioTrack, outputSettings: nil)
            assetReader.add(audioOutput)
            
            let audioInput = AVAssetWriterInput(mediaType: audioTrack.mediaType, outputSettings: nil)
            assetWriter.add(audioInput)
            
            // Create and save an instance of AVSampleBufferChannel, which will coordinate the work of reading and writing sample buffers
            audioSampleBufferChannel = SampleBufferChannel(
                sampleProvider: audioOutput,
                assetWriterInput: audioInput,
                assetWriterAdaptor: nil
            )
             
            // Setup metadata track in order to write metadata samples
            var formatDescriptions: [CMFormatDescription] = []
            if self.chapters.count > 0 {
                for chapter in self.chapters {
                    formatDescriptions.append(chapter.copyFormatDescription()!)
                }
            } else {
                formatDescriptions = []
            }
            let assetWriterMetadataIn = AVAssetWriterInput(
                mediaType: .text,
                outputSettings: nil,
                sourceFormatHint: (formatDescriptions as! CMFormatDescription)
            )
            let assetWriterMetadataAdaptor = AVAssetWriterInputMetadataAdaptor(assetWriterInput: assetWriterMetadataIn)
            assetWriterMetadataIn.expectsMediaDataInRealTime = true;
            
            assetWriterMetadataIn.addTrackAssociation(withTrackOf: audioInput, type: AVAssetTrack.AssociationType.chapterList.rawValue)
            assetWriter.add(assetWriterMetadataIn)
            
            let chapterProvider = ChapterGroupProvider(chapters: chapters)
            
            chapterSampleBufferChannel = SampleBufferChannel(
                sampleProvider: chapterProvider,
                assetWriterInput: assetWriterMetadataIn,
                assetWriterAdaptor: assetWriterMetadataAdaptor
            )
        }
    }
    
    private func startReadingAndWriting() throws {
        
        // Instruct the asset reader and asset writer to get ready to do work
        guard assetReader.startReading() else {
            throw assetReader.error!
        }
        guard assetWriter.startWriting() else {
            throw assetWriter.error!
        }
        
        // Start a sample-writing session
        assetWriter.startSession(atSourceTime: .zero)
        
        let dispatchGroup = DispatchGroup()
        
        // Start reading and writing samples
        dispatchGroup.enter()
        audioSampleBufferChannel.startReadingAndWriting(withCompletionHandler: {
            dispatchGroup.leave()
        })
        dispatchGroup.enter()
        chapterSampleBufferChannel.startReadingAndWriting(withCompletionHandler: {
            dispatchGroup.leave()
        })
        
        // Set up a callback for when the sample writing is finished
        dispatchGroup.notify(queue: serializationQueue, execute: {
            var finalSuccess = true
            var finalError: Error?
            
            if self.assetReader.status == .failed {
                finalSuccess = false
                finalError = self.assetReader.error
            }
            
            if finalSuccess {
                dispatchGroup.enter()
                
                self.assetWriter.finishWriting(completionHandler: {
                    
                    finalSuccess = self.assetWriter.status == .completed
                    
                    dispatchGroup.leave()
                })
                
                dispatchGroup.wait()
                
                if !finalSuccess {
                    
                    finalError = self.assetWriter.error
                    
                    self.readingAndWritingDidFinishSuccessfully(error: finalError)
                }
                
                self.globalDispatchSemaphore.signal()
            }
        })
    }
    
    private func readingAndWritingDidFinishSuccessfully(error: Error?) {
        if let error = error {
            assetReader.cancelReading()
            assetWriter.cancelWriting()
            
            print("Writing metadata failed with the following error: \(error)")
        }
    }
}
