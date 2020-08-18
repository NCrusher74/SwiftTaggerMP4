import XCTest
import Cocoa
//import SwiftMp4MetadataParser
@testable import SwiftTaggerMP4

@available(OSX 10.13, *)
final class SwiftTaggerMP4Tests: XCTestCase {
    func testStringAndStringArrayCreation() throws {
        let source = try mp4File(withMeta: false)
        var tag = try Tag(from: source)
        tag.acknowledgment = "Acknowledgment"
        tag.album = "Album"
        tag.albumArtist = "Album Artist"
        tag.albumArtistSort = "Album Artist Sort"
        tag.albumSort = "Album Sort"
        tag.arranger = "Arranger"
        tag.arrangerKeywords = ["Arranger", "Keywords"]
        tag.artDirector = "Art Director"
        tag.artist = "Artist"
        tag.artistKeywords = ["Artist", "Keywords"]
        tag.artistSort = "Artist Sort"
        tag.artistUrl = "Artist Url"
        tag.category = "Category"
        tag.comment = "Comment"
        tag.composer = "Composer"
        tag.composerKeywords = ["Composer", "Keywords"]
        tag.composerSort = "Composer Sort"
        tag.conductor = "Conductor"
        tag.copyright = "Copyright"
        tag.copyrightStatement = "Copyright Statement"
        tag.customGenre = "Custom Genre"
        tag.description = "Description"
        tag.director = "Director"
        tag.editDateAndDescription1 = "Edit Date Description 1"
        tag.editDateAndDescription2 = "Edit Date Description 2"
        tag.editDateAndDescription3 = "Edit Date Description 3"
        tag.editDateAndDescription4 = "Edit Date Description 4"
        tag.editDateAndDescription5 = "Edit Date Description 5"
        tag.editDateAndDescription6 = "Edit Date Description 6"
        tag.editDateAndDescription7 = "Edit Date Description 7"
        tag.editDateAndDescription8 = "Edit Date Description 8"
        tag.editDateAndDescription9 = "Edit Date Description 9"
        tag.encodedBy = "Encoded By"
        tag.encodingTool = "Encoding Tool"
        tag.executiveProducer = "Executive Producer"
        tag.filmMakerUrl = "Filmmaker Url"
        tag.format = "Format"
        tag.grouping = "Grouping"
        tag.information = "Information"
        tag.isrc = "123456789012"
        tag.podcastKeywords = ["Key","Words"]
        tag.label = "Label"
        tag.linerNotes = "Liner Notes"
        tag.longDescription = "Long Description"
        tag.lyricist = "Lyricist"
        tag.lyrics = "Lyrics"
        tag.movementName = "Movement Name"
        tag.narrator = "Narrator"
        tag.originalArtist = "Original Artist"
        tag.owner = "Owner"
        tag.performers = "Performers"
        tag.predefinedGenre = .audiobooks
        tag.producer = "Producer"
        tag.producerKeywords = ["Producer", "Keywords"]
        tag.publisher = "Publisher"
        tag.publisherUrl = "Publisher Url"
        tag.podcastUrl = "Podcast Url"
        tag.podcastID = "Podcast ID"
        tag.recordCompany = "Record Company"
        tag.recordingCopyright = "Recording Copyright"
        tag.requirements = "Requirements"
        tag.sellerID = "Seller"
        tag.softwareVersion = "Software Version"
        tag.soloist = "Soloist"
        tag.songDescription = "Song Description"
        tag.songwriterKeywords = ["Songwriter", "Keywords"]
        tag.soundEngineer = "Sound Engineer"
        tag.sourceCredit = "Source Credit"
        tag.subtitle = "Subtitle"
        tag.subtitleKeywords = ["Subtitle", "Keywords"]
        tag.thanks = "Thanks"
        tag.title = "Title"
        tag.titleKeywords = ["Title", "Keywords"]
        tag.titleSort = "Title Sort"
        tag.trackSubtitle = "Track Subtitle"
        tag.tvEpisodeTitle = "TV Episode Title"
        tag.tvNetwork = "TV Network"
        tag.tvShow = "TV Show"
        tag.tvShowDescription = "TV Show Description"
        tag.tvShowSort = "TV Show Sort"
        tag.website = "Website"
        tag.workName = "Work"
        tag.writer = "Writer"
        tag["UNKNOWN"] = "Unknown"
        
        let outputUrl = try localDirectory(fileName: "stringtest", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        XCTAssertEqual(output.acknowledgment, "Acknowledgment")
        XCTAssertEqual(output.album, "Album")
        XCTAssertEqual(output.albumArtist, "Album Artist")
        XCTAssertEqual(output.albumArtistSort, "Album Artist Sort")
        XCTAssertEqual(output.albumSort, "Album Sort")
        XCTAssertEqual(output.arranger, "Arranger")
        XCTAssertEqual(output.arrangerKeywords, ["Arranger", "Keywords"])
        XCTAssertEqual(output.artDirector, "Art Director")
        XCTAssertEqual(output.artist, "Artist")
        XCTAssertEqual(output.artistKeywords, ["Artist", "Keywords"])
        XCTAssertEqual(output.artistSort, "Artist Sort")
        XCTAssertEqual(output.artistUrl, "Artist Url")
        XCTAssertEqual(output.category, "Category")
        XCTAssertEqual(output.comment, "Comment")
        XCTAssertEqual(output.composer, "Composer")
        XCTAssertEqual(output.composerKeywords, ["Composer", "Keywords"])
        XCTAssertEqual(output.composerSort, "Composer Sort")
        XCTAssertEqual(output.conductor, "Conductor")
        XCTAssertEqual(output.copyright, "Copyright")
        XCTAssertEqual(output.copyrightStatement, "Copyright Statement")
        XCTAssertEqual(output.customGenre, "Custom Genre")
        XCTAssertEqual(output.description, "Description")
        XCTAssertEqual(output.director, "Director")
        XCTAssertEqual(output.editDateAndDescription1, "Edit Date Description 1")
        XCTAssertEqual(output.editDateAndDescription2, "Edit Date Description 2")
        XCTAssertEqual(output.editDateAndDescription3, "Edit Date Description 3")
        XCTAssertEqual(output.editDateAndDescription4, "Edit Date Description 4")
        XCTAssertEqual(output.editDateAndDescription5, "Edit Date Description 5")
        XCTAssertEqual(output.editDateAndDescription6, "Edit Date Description 6")
        XCTAssertEqual(output.editDateAndDescription7, "Edit Date Description 7")
        XCTAssertEqual(output.editDateAndDescription8, "Edit Date Description 8")
        XCTAssertEqual(output.editDateAndDescription9, "Edit Date Description 9")
        XCTAssertEqual(output.encodedBy, "Encoded By")
        XCTAssertEqual(output.encodingTool, "Encoding Tool")
        XCTAssertEqual(output.executiveProducer, "Executive Producer")
        XCTAssertEqual(output.filmMakerUrl, "Filmmaker Url")
        XCTAssertEqual(output.grouping, "Grouping")
        XCTAssertEqual(output.information, "Information")
        XCTAssertEqual(output.isrc, "123456789012")
        XCTAssertEqual(output.podcastKeywords, ["Key", "Words"])
        XCTAssertEqual(output.label, "Label")
        XCTAssertEqual(output.linerNotes, "Liner Notes")
        XCTAssertEqual(output.format, "Format")
        XCTAssertEqual(output.longDescription, "Long Description")
        XCTAssertEqual(output.lyricist, "Lyricist")
        XCTAssertEqual(output.lyrics, "Lyrics")
        XCTAssertEqual(output.movementName, "Movement Name")
        XCTAssertEqual(output.narrator, "Narrator")
        XCTAssertEqual(output.originalArtist, "Original Artist")
        XCTAssertEqual(output.owner, "Owner")
        XCTAssertEqual(output.performers, "Performers")
        XCTAssertEqual(output.predefinedGenre, .audiobooks)
        XCTAssertEqual(output.producer, "Producer")
        XCTAssertEqual(output.producerKeywords, ["Producer", "Keywords"])
        XCTAssertEqual(output.publisher, "Publisher")
        XCTAssertEqual(output.publisherUrl, "Publisher Url")
        XCTAssertEqual(output.podcastUrl, "Podcast Url")
        XCTAssertEqual(output.podcastID, "Podcast ID")
        XCTAssertEqual(output.recordCompany, "Record Company")
        XCTAssertEqual(output.recordingCopyright, "Recording Copyright")
        XCTAssertEqual(output.requirements, "Requirements")
        XCTAssertEqual(output.sellerID, "Seller")
        XCTAssertEqual(output.softwareVersion, "Software Version")
        XCTAssertEqual(output.soloist, "Soloist")
        XCTAssertEqual(output.songDescription, "Song Description")
        XCTAssertEqual(output.songwriterKeywords, ["Songwriter", "Keywords"])
        XCTAssertEqual(output.soundEngineer, "Sound Engineer")
        XCTAssertEqual(output.sourceCredit, "Source Credit")
        XCTAssertEqual(output.subtitle, "Subtitle")
        XCTAssertEqual(output.subtitleKeywords, ["Subtitle", "Keywords"])
        XCTAssertEqual(output.thanks, "Thanks")
        XCTAssertEqual(output.title, "Title")
        XCTAssertEqual(output.titleKeywords, ["Title", "Keywords"])
        XCTAssertEqual(output.titleSort, "Title Sort")
        XCTAssertEqual(output.trackSubtitle, "Track Subtitle")
        XCTAssertEqual(output.tvEpisodeTitle, "TV Episode Title")
        XCTAssertEqual(output.tvNetwork, "TV Network")
        XCTAssertEqual(output.tvShow, "TV Show")
        XCTAssertEqual(output.tvShowDescription, "TV Show Description")
        XCTAssertEqual(output.tvShowSort, "TV Show Sort")
        XCTAssertEqual(output.website, "Website")
        XCTAssertEqual(output.workName, "Work")
        XCTAssertEqual(output.writer, "Writer")
        XCTAssertEqual(output["UNKNOWN"], "Unknown")
    }
    
    func testIntAndIntArrayWriting() throws {
        let source = try mp4File(withMeta: false)
        var tag = try Tag(from: source)

        tag.albumID = 123456
        tag.artistID = 234567
        tag.bpm = 99
        tag.compilation = true
        tag.composerID = 345678
        tag.conductorID = 456789
        tag.gaplessPlayback = true
        tag.genreID = .audiobooks
        tag.mediaType = .audiobook
        tag.movementCount = 9
        tag.movementNumber = 8
        tag.playlistID = 567890
        tag.podcast = true
        tag.rating = .clean
        tag.showWorkAndMovement = true
        tag.tvEpisodeNumber = 7
        tag.tvSeason = 6
        tag.discNumber.disc = 2
        tag.discNumber.totalDiscs = 3
        tag.trackNumber.track = 4
        tag.trackNumber.totalTracks = 5
        tag.appleStoreCountryID = 678901

        
        let outputUrl = try localDirectory(fileName: "inttest", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))

        XCTAssertEqual(output.albumID, 123456)
        XCTAssertEqual(output.artistID, 234567)
        XCTAssertEqual(output.bpm, 99)
        XCTAssertEqual(output.compilation, true)
        XCTAssertEqual(output.composerID, 345678)
        XCTAssertEqual(output.conductorID, 456789)
        XCTAssertEqual(output.gaplessPlayback, true)
        XCTAssertEqual(output.genreID, .audiobooks)
        XCTAssertEqual(output.mediaType, .audiobook)
        XCTAssertEqual(output.movementCount, 9)
        XCTAssertEqual(output.movementNumber, 8)
        XCTAssertEqual(output.playlistID, 567890)
        XCTAssertEqual(output.podcast, true)
        XCTAssertEqual(output.rating, .clean)
        XCTAssertEqual(output.showWorkAndMovement, true)
        XCTAssertEqual(output.tvEpisodeNumber, 7)
        XCTAssertEqual(output.tvSeason, 6)
        XCTAssertEqual(output.discNumber.disc, 2)
        XCTAssertEqual(output.discNumber.totalDiscs, 3)
        XCTAssertEqual(output.trackNumber.track, 4)
        XCTAssertEqual(output.trackNumber.totalTracks, 5)
        XCTAssertEqual(output.appleStoreCountryID, 678901)
    }

    func testDateWriting() throws {
        let source = try mp4File(withMeta: false)
        var tag = try Tag(from: source)

        var components = DateComponents()
        components.year = 1979
        components.month = 11
        components.day = 23
        var calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
        calendar.timeZone = timeZone
        let date = calendar.date(from: components)
        
        tag.purchaseDate = date
        tag.recordingDate = date
        tag.releaseDate = date
        tag.year = date
        
        let coverURL = fileVersion.cover.url
        try tag.setCoverArt(imageLocation: coverURL)

        let outputUrl = try localDirectory(fileName: "datetest", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))

        XCTAssertEqual(output.purchaseDate, date)
        XCTAssertEqual(output.recordingDate, date)
        XCTAssertEqual(output.releaseDate, date)
        XCTAssertEqual(output.year, date)
        
        let coverArt = output.coverArt
        let coverArtUrl = try localDirectory(fileName: "cover", fileExtension: "jpg")
        try coverArt?.data.write(to: coverArtUrl)
    }
    
    func testFreeFormMetadataAccessors() throws {
        let source = try mp4File(withMeta: false)
        var tag = try Tag(from: source)
        var components = DateComponents()
        components.year = 1979
        components.month = 11
        components.day = 23
        var calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
        calendar.timeZone = timeZone
        let date = calendar.date(from: components)

        tag["UNKNOWN"] = "unknown"
        tag.audioFileWebpage = "audio file webpage"
        tag.audioSourceWebpage = "audio source webpage"
        tag.copyrightWebpage = "copyright webpage"
        tag.encodingSettings = "encoding settings"
        tag.encodingTime = date
        tag.fileType = .M4A
        tag.paymentWebpage = "payment webpage"
        tag.radioStation = "radio station"
        tag.radioStationOwner = "radio station owner"
        tag.radioStationWebpage = "radio station webpage"
        tag.taggingTime = date

        let outputUrl = try localDirectory(fileName: "freeformtest", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        
        XCTAssertEqual(output["UNKNOWN"], "unknown")
        XCTAssertEqual(output.audioFileWebpage, "audio file webpage")
        XCTAssertEqual(output.audioSourceWebpage, "audio source webpage")
        XCTAssertEqual(output.copyrightWebpage, "copyright webpage")
        XCTAssertEqual(output.encodingSettings, "encoding settings")
        XCTAssertEqual(tag.encodingTime, date)
        XCTAssertEqual(tag.fileType, .M4A)
        XCTAssertEqual(tag.paymentWebpage, "payment webpage")
        XCTAssertEqual(tag.radioStation, "radio station")
        XCTAssertEqual(tag.radioStationOwner, "radio station owner")
        XCTAssertEqual(tag.radioStationWebpage, "radio station webpage")
        XCTAssertEqual(tag.taggingTime, date)
    }

    func testChaptering() throws {
        let url = fileVersion.chaptered.url
        let source = try Mp4File(location: url)
        let tag = try Tag(from: source)
        
        let chapters = tag.chapterList
        var titles = [String]()
        var starts = [Int]()
        for chapter in chapters {
            titles.append(chapter.title)
            starts.append(chapter.startTime)
        }
        let knownTitles = ["Chapter 1","Chapter 2","Chapter 3","Chapter 4","Chapter 5","Chapter 6"]
        let knownStarts = [0, 600, 1300, 2100, 3300, 4600]
        XCTAssertEqual(titles, knownTitles)
        XCTAssertEqual(starts, knownStarts)
    }
    
    func testChapterRemovalAll() throws {
        let url = fileVersion.chaptered.url
        let source = try Mp4File(location: url)
        let tag = try Tag(from: source)
        try tag.removeAllChapters()
        
        let outputUrl = try localDirectory(fileName: "removeall", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        XCTAssertTrue(output.chapterList.isEmpty)
    }
    
    func testChapterRemovalSingle() throws {
        let url = fileVersion.chaptered.url
        let source = try Mp4File(location: url)
        let tag = try Tag(from: source)
        tag.removeChapter(at: 1300)
        
        let outputUrl = try localDirectory(fileName: "removesingle", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        let chapters = output.chapterList
        var titles = [String]()
        var starts = [Int]()
        for chapter in chapters {
            titles.append(chapter.title)
            starts.append(chapter.startTime)
        }
        let knownTitles = ["Chapter 1","Chapter 2","Chapter 4","Chapter 5","Chapter 6"]
        let knownStarts = [0, 600, 2100, 3300, 4600]
        XCTAssertEqual(titles, knownTitles)
        XCTAssertEqual(starts, knownStarts)
    }

    func testChapterRenameChapters() throws {
        let url = fileVersion.chaptered.url
        let source = try Mp4File(location: url)
        let tag = try Tag(from: source)
        tag.addChapter(at: 0, title: "Chapter One")
        tag.addChapter(at: 600, title: "Chapter Two")
        tag.addChapter(at: 1300, title: "Chapter Three")
        tag.addChapter(at: 2100, title: "Chapter Four")
        tag.addChapter(at: 3300, title: "Chapter Five")
        tag.addChapter(at: 4600, title: "Chapter Six")

        let outputUrl = try localDirectory(fileName: "renaming", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        let chapters = output.chapterList
        var titles = [String]()
        var starts = [Int]()
        for chapter in chapters {
            titles.append(chapter.title)
            starts.append(chapter.startTime)
        }
        let knownTitles = ["Chapter One","Chapter Two","Chapter Three","Chapter Four","Chapter Five","Chapter Six"]
        let knownStarts = [0, 600, 1300, 2100, 3300, 4600]
        XCTAssertEqual(titles, knownTitles)
        XCTAssertEqual(starts, knownStarts)
    }

    func testChapterAddChapters() throws {
        let url = fileVersion.noMeta.url
        let source = try Mp4File(location: url)
        let tag = try Tag(from: source)
        tag.addChapter(at: 0, title: "Chapter One")
        tag.addChapter(at: 600, title: "Chapter Two")
        tag.addChapter(at: 1300, title: "Chapter Three")
        tag.addChapter(at: 2100, title: "Chapter Four")
        tag.addChapter(at: 3300, title: "Chapter Five")
        tag.addChapter(at: 4600, title: "Chapter Six")
        
        let outputUrl = try localDirectory(fileName: "adding", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        let chapters = output.chapterList
        var titles = [String]()
        var starts = [Int]()
        for chapter in chapters {
            titles.append(chapter.title)
            starts.append(chapter.startTime)
        }
        let knownTitles = ["Chapter One","Chapter Two","Chapter Three","Chapter Four","Chapter Five","Chapter Six"]
        let knownStarts = [0, 600, 1300, 2100, 3300, 4600]
        XCTAssertEqual(titles, knownTitles)
        XCTAssertEqual(starts, knownStarts)
    }

    func testAll() throws {
        let url = fileVersion.noMeta.url
        let source = try Mp4File(location: url)
        var tag = try Tag(from: source)
        tag.addChapter(at: 0, title: "Chapter One")
        tag.addChapter(at: 600, title: "Chapter Two")
        tag.addChapter(at: 1300, title: "Chapter Three")
        tag.addChapter(at: 2100, title: "Chapter Four")
        tag.addChapter(at: 3300, title: "Chapter Five")
        tag.addChapter(at: 4600, title: "Chapter Six")

        var components = DateComponents()
        components.year = 1979
        components.month = 11
        components.day = 23
        var calendar = Calendar(identifier: .iso8601)
        let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
        calendar.timeZone = timeZone
        let date = calendar.date(from: components)
        
        tag["UNKNOWN"] = "unknown"
        tag.audioFileWebpage = "audio file webpage"
        tag.audioSourceWebpage = "audio source webpage"
        tag.copyrightWebpage = "copyright webpage"
        tag.encodingSettings = "encoding settings"
        tag.encodingTime = date
        tag.fileType = .M4A
        tag.paymentWebpage = "payment webpage"
        tag.radioStation = "radio station"
        tag.radioStationOwner = "radio station owner"
        tag.radioStationWebpage = "radio station webpage"
        tag.taggingTime = date
        tag.purchaseDate = date
        tag.recordingDate = date
        tag.releaseDate = date
        tag.year = date
        
        let coverURL = fileVersion.cover.url
        try tag.setCoverArt(imageLocation: coverURL)

        tag.albumID = 123456
        tag.artistID = 234567
        tag.bpm = 99
        tag.compilation = true
        tag.composerID = 345678
        tag.conductorID = 456789
        tag.gaplessPlayback = true
        tag.genreID = .audiobooks
        tag.mediaType = .audiobook
        tag.movementCount = 9
        tag.movementNumber = 8
        tag.playlistID = 567890
        tag.podcast = true
        tag.rating = .clean
        tag.showWorkAndMovement = true
        tag.tvEpisodeNumber = 7
        tag.tvSeason = 6
        tag.discNumber.disc = 2
        tag.discNumber.totalDiscs = 3
        tag.trackNumber.track = 4
        tag.trackNumber.totalTracks = 5
        tag.appleStoreCountryID = 678901
        tag.acknowledgment = "Acknowledgment"
        tag.album = "Album"
        tag.albumArtist = "Album Artist"
        tag.albumArtistSort = "Album Artist Sort"
        tag.albumSort = "Album Sort"
        tag.arranger = "Arranger"
        tag.arrangerKeywords = ["Arranger", "Keywords"]
        tag.artDirector = "Art Director"
        tag.artist = "Artist"
        tag.artistKeywords = ["Artist", "Keywords"]
        tag.artistSort = "Artist Sort"
        tag.artistUrl = "Artist Url"
        tag.category = "Category"
        tag.comment = "Comment"
        tag.composer = "Composer"
        tag.composerKeywords = ["Composer", "Keywords"]
        tag.composerSort = "Composer Sort"
        tag.conductor = "Conductor"
        tag.copyright = "Copyright"
        tag.copyrightStatement = "Copyright Statement"
        tag.customGenre = "Custom Genre"
        tag.description = "Description"
        tag.director = "Director"
        tag.editDateAndDescription1 = "Edit Date Description 1"
        tag.editDateAndDescription2 = "Edit Date Description 2"
        tag.editDateAndDescription3 = "Edit Date Description 3"
        tag.editDateAndDescription4 = "Edit Date Description 4"
        tag.editDateAndDescription5 = "Edit Date Description 5"
        tag.editDateAndDescription6 = "Edit Date Description 6"
        tag.editDateAndDescription7 = "Edit Date Description 7"
        tag.editDateAndDescription8 = "Edit Date Description 8"
        tag.editDateAndDescription9 = "Edit Date Description 9"
        tag.encodedBy = "Encoded By"
        tag.encodingTool = "Encoding Tool"
        tag.executiveProducer = "Executive Producer"
        tag.filmMakerUrl = "Filmmaker Url"
        tag.format = "Format"
        tag.grouping = "Grouping"
        tag.information = "Information"
        tag.isrc = "123456789012"
        tag.podcastKeywords = ["Key","Words"]
        tag.label = "Label"
        tag.linerNotes = "Liner Notes"
        tag.longDescription = "Long Description"
        tag.lyricist = "Lyricist"
        tag.lyrics = "Lyrics"
        tag.movementName = "Movement Name"
        tag.narrator = "Narrator"
        tag.originalArtist = "Original Artist"
        tag.owner = "Owner"
        tag.performers = "Performers"
        tag.predefinedGenre = .audiobooks
        tag.producer = "Producer"
        tag.producerKeywords = ["Producer", "Keywords"]
        tag.publisher = "Publisher"
        tag.publisherUrl = "Publisher Url"
        tag.podcastUrl = "Podcast Url"
        tag.podcastID = "Podcast ID"
        tag.recordCompany = "Record Company"
        tag.recordingCopyright = "Recording Copyright"
        tag.requirements = "Requirements"
        tag.sellerID = "Seller"
        tag.softwareVersion = "Software Version"
        tag.soloist = "Soloist"
        tag.songDescription = "Song Description"
        tag.songwriterKeywords = ["Songwriter", "Keywords"]
        tag.soundEngineer = "Sound Engineer"
        tag.sourceCredit = "Source Credit"
        tag.subtitle = "Subtitle"
        tag.subtitleKeywords = ["Subtitle", "Keywords"]
        tag.thanks = "Thanks"
        tag.title = "Title"
        tag.titleKeywords = ["Title", "Keywords"]
        tag.titleSort = "Title Sort"
        tag.trackSubtitle = "Track Subtitle"
        tag.tvEpisodeTitle = "TV Episode Title"
        tag.tvNetwork = "TV Network"
        tag.tvShow = "TV Show"
        tag.tvShowDescription = "TV Show Description"
        tag.tvShowSort = "TV Show Sort"
        tag.website = "Website"
        tag.workName = "Work"
        tag.writer = "Writer"
        
        let outputUrl = try localDirectory(fileName: "test all", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        let chapters = output.chapterList
        var titles = [String]()
        var starts = [Int]()
        for chapter in chapters {
            titles.append(chapter.title)
            starts.append(chapter.startTime)
        }
        let knownTitles = ["Chapter One","Chapter Two","Chapter Three","Chapter Four","Chapter Five","Chapter Six"]
        let knownStarts = [0, 600, 1300, 2100, 3300, 4600]
        XCTAssertEqual(titles, knownTitles)
        XCTAssertEqual(starts, knownStarts)
        XCTAssertEqual(output["UNKNOWN"], "unknown")
        XCTAssertEqual(output.audioFileWebpage, "audio file webpage")
        XCTAssertEqual(output.audioSourceWebpage, "audio source webpage")
        XCTAssertEqual(output.copyrightWebpage, "copyright webpage")
        XCTAssertEqual(output.encodingSettings, "encoding settings")
        XCTAssertEqual(output.encodingTime, date)
        XCTAssertEqual(output.fileType, .M4A)
        XCTAssertEqual(output.paymentWebpage, "payment webpage")
        XCTAssertEqual(output.radioStation, "radio station")
        XCTAssertEqual(output.radioStationOwner, "radio station owner")
        XCTAssertEqual(output.radioStationWebpage, "radio station webpage")
        XCTAssertEqual(output.taggingTime, date)
        XCTAssertEqual(output.purchaseDate, date)
        XCTAssertEqual(output.recordingDate, date)
        XCTAssertEqual(output.releaseDate, date)
        XCTAssertEqual(output.year, date)
        
        let coverArt = output.coverArt
        let coverArtUrl = try localDirectory(fileName: "cover", fileExtension: "jpg")
        try coverArt?.data.write(to: coverArtUrl)
        XCTAssertEqual(output.albumID, 123456)
        XCTAssertEqual(output.artistID, 234567)
        XCTAssertEqual(output.bpm, 99)
        XCTAssertEqual(output.compilation, true)
        XCTAssertEqual(output.composerID, 345678)
        XCTAssertEqual(output.conductorID, 456789)
        XCTAssertEqual(output.gaplessPlayback, true)
        XCTAssertEqual(output.genreID, .audiobooks)
        XCTAssertEqual(output.mediaType, .audiobook)
        XCTAssertEqual(output.movementCount, 9)
        XCTAssertEqual(output.movementNumber, 8)
        XCTAssertEqual(output.playlistID, 567890)
        XCTAssertEqual(output.podcast, true)
        XCTAssertEqual(output.rating, .clean)
        XCTAssertEqual(output.showWorkAndMovement, true)
        XCTAssertEqual(output.tvEpisodeNumber, 7)
        XCTAssertEqual(output.tvSeason, 6)
        XCTAssertEqual(output.discNumber.disc, 2)
        XCTAssertEqual(output.discNumber.totalDiscs, 3)
        XCTAssertEqual(output.trackNumber.track, 4)
        XCTAssertEqual(output.trackNumber.totalTracks, 5)
        XCTAssertEqual(output.appleStoreCountryID, 678901)
        XCTAssertEqual(output.acknowledgment, "Acknowledgment")
        XCTAssertEqual(output.album, "Album")
        XCTAssertEqual(output.albumArtist, "Album Artist")
        XCTAssertEqual(output.albumArtistSort, "Album Artist Sort")
        XCTAssertEqual(output.albumSort, "Album Sort")
        XCTAssertEqual(output.arranger, "Arranger")
        XCTAssertEqual(output.arrangerKeywords, ["Arranger", "Keywords"])
        XCTAssertEqual(output.artDirector, "Art Director")
        XCTAssertEqual(output.artist, "Artist")
        XCTAssertEqual(output.artistKeywords, ["Artist", "Keywords"])
        XCTAssertEqual(output.artistSort, "Artist Sort")
        XCTAssertEqual(output.artistUrl, "Artist Url")
        XCTAssertEqual(output.category, "Category")
        XCTAssertEqual(output.comment, "Comment")
        XCTAssertEqual(output.composer, "Composer")
        XCTAssertEqual(output.composerKeywords, ["Composer", "Keywords"])
        XCTAssertEqual(output.composerSort, "Composer Sort")
        XCTAssertEqual(output.conductor, "Conductor")
        XCTAssertEqual(output.copyright, "Copyright")
        XCTAssertEqual(output.copyrightStatement, "Copyright Statement")
        XCTAssertEqual(output.customGenre, "Custom Genre")
        XCTAssertEqual(output.description, "Description")
        XCTAssertEqual(output.director, "Director")
        XCTAssertEqual(output.editDateAndDescription1, "Edit Date Description 1")
        XCTAssertEqual(output.editDateAndDescription2, "Edit Date Description 2")
        XCTAssertEqual(output.editDateAndDescription3, "Edit Date Description 3")
        XCTAssertEqual(output.editDateAndDescription4, "Edit Date Description 4")
        XCTAssertEqual(output.editDateAndDescription5, "Edit Date Description 5")
        XCTAssertEqual(output.editDateAndDescription6, "Edit Date Description 6")
        XCTAssertEqual(output.editDateAndDescription7, "Edit Date Description 7")
        XCTAssertEqual(output.editDateAndDescription8, "Edit Date Description 8")
        XCTAssertEqual(output.editDateAndDescription9, "Edit Date Description 9")
        XCTAssertEqual(output.encodedBy, "Encoded By")
        XCTAssertEqual(output.encodingTool, "Encoding Tool")
        XCTAssertEqual(output.executiveProducer, "Executive Producer")
        XCTAssertEqual(output.filmMakerUrl, "Filmmaker Url")
        XCTAssertEqual(output.grouping, "Grouping")
        XCTAssertEqual(output.information, "Information")
        XCTAssertEqual(output.isrc, "123456789012")
        XCTAssertEqual(output.podcastKeywords, ["Key", "Words"])
        XCTAssertEqual(output.label, "Label")
        XCTAssertEqual(output.linerNotes, "Liner Notes")
        XCTAssertEqual(output.format, "Format")
        XCTAssertEqual(output.longDescription, "Long Description")
        XCTAssertEqual(output.lyricist, "Lyricist")
        XCTAssertEqual(output.lyrics, "Lyrics")
        XCTAssertEqual(output.movementName, "Movement Name")
        XCTAssertEqual(output.narrator, "Narrator")
        XCTAssertEqual(output.originalArtist, "Original Artist")
        XCTAssertEqual(output.owner, "Owner")
        XCTAssertEqual(output.performers, "Performers")
        XCTAssertEqual(output.predefinedGenre, .audiobooks)
        XCTAssertEqual(output.producer, "Producer")
        XCTAssertEqual(output.producerKeywords, ["Producer", "Keywords"])
        XCTAssertEqual(output.publisher, "Publisher")
        XCTAssertEqual(output.publisherUrl, "Publisher Url")
        XCTAssertEqual(output.podcastUrl, "Podcast Url")
        XCTAssertEqual(output.podcastID, "Podcast ID")
        XCTAssertEqual(output.recordCompany, "Record Company")
        XCTAssertEqual(output.recordingCopyright, "Recording Copyright")
        XCTAssertEqual(output.requirements, "Requirements")
        XCTAssertEqual(output.sellerID, "Seller")
        XCTAssertEqual(output.softwareVersion, "Software Version")
        XCTAssertEqual(output.soloist, "Soloist")
        XCTAssertEqual(output.songDescription, "Song Description")
        XCTAssertEqual(output.songwriterKeywords, ["Songwriter", "Keywords"])
        XCTAssertEqual(output.soundEngineer, "Sound Engineer")
        XCTAssertEqual(output.sourceCredit, "Source Credit")
        XCTAssertEqual(output.subtitle, "Subtitle")
        XCTAssertEqual(output.subtitleKeywords, ["Subtitle", "Keywords"])
        XCTAssertEqual(output.thanks, "Thanks")
        XCTAssertEqual(output.title, "Title")
        XCTAssertEqual(output.titleKeywords, ["Title", "Keywords"])
        XCTAssertEqual(output.titleSort, "Title Sort")
        XCTAssertEqual(output.trackSubtitle, "Track Subtitle")
        XCTAssertEqual(output.tvEpisodeTitle, "TV Episode Title")
        XCTAssertEqual(output.tvNetwork, "TV Network")
        XCTAssertEqual(output.tvShow, "TV Show")
        XCTAssertEqual(output.tvShowDescription, "TV Show Description")
        XCTAssertEqual(output.tvShowSort, "TV Show Sort")
        XCTAssertEqual(output.website, "Website")
        XCTAssertEqual(output.workName, "Work")
        XCTAssertEqual(output.writer, "Writer")        
    }
    
    func testRemoveFreeform() throws {
        let url = fileVersion.withMeta.url
        let source = try Mp4File(location: url)
        var tag = try Tag(from: source)
        tag["MOOD"] = nil

        let outputUrl = try localDirectory(fileName: "removeFreeform", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        XCTAssertNil(output["MOOD"])
    }
    
    func testRemoveAllMetadata() throws {
        let url = fileVersion.withMeta.url
        let source = try Mp4File(location: url)
        var tag = try Tag(from: source)
        try tag.removeAllMetadata()
        XCTAssertTrue(tag.metadata.isEmpty)

        let outputUrl = try localDirectory(fileName: "removeAllMeta", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)

        let output = try Tag(from: Mp4File(location: outputUrl))
        XCTAssertTrue(output.metadata.isEmpty)
    }
    
    func testRemoveMetadataItems() throws {
        let url = fileVersion.withMeta.url
        let source = try Mp4File(location: url)
        var tag = try Tag(from: source)
        
        tag.albumID = nil
        tag.artistID = nil
        tag.bpm = nil
        tag.compilation = nil
        tag.composerID = nil
        tag.conductorID = nil
        tag.gaplessPlayback = nil
        tag.genreID = nil
        tag.mediaType = nil
        tag.movementCount = nil
        tag.movementNumber = nil
        tag.playlistID = nil
        tag.podcast = nil
        tag.rating = nil
        tag.showWorkAndMovement = nil
        tag.tvEpisodeNumber = nil
        tag.tvSeason = nil
        try tag.removeDiscNumber()
        try tag.removeTrackNumber()
        tag.appleStoreCountryID = nil
        tag.acknowledgment = nil
        tag.album = nil
        tag.albumArtist = nil
        tag.albumArtistSort = nil
        tag.albumSort = nil
        tag.arranger = nil
        tag.arrangerKeywords = nil
        tag.artDirector = nil
        tag.artist = nil
        tag.artistKeywords = nil
        tag.artistSort = nil
        tag.artistUrl = nil
        tag.category = nil
        tag.comment = nil
        tag.composer = nil
        tag.composerKeywords = nil
        tag.composerSort = nil
        tag.conductor = nil
        tag.copyright = nil
        tag.copyrightStatement = nil
        tag.customGenre = nil
        tag.description = nil
        tag.director = nil
        tag.editDateAndDescription1 = nil
        tag.editDateAndDescription2 = nil
        tag.editDateAndDescription3 = nil
        tag.editDateAndDescription4 = nil
        tag.editDateAndDescription5 = nil
        tag.editDateAndDescription6 = nil
        tag.editDateAndDescription7 = nil
        tag.editDateAndDescription8 = nil
        tag.editDateAndDescription9 = nil
        tag.encodedBy = nil
        tag.encodingTool = nil
        tag.executiveProducer = nil
        tag.filmMakerUrl = nil
        tag.format = nil
        tag.grouping = nil
        tag.information = nil
        tag.isrc = nil
        tag.podcastKeywords = nil
        tag.label = nil
        tag.linerNotes = nil
        tag.longDescription = nil
        tag.lyricist = nil
        tag.lyrics = nil
        tag.movementName = nil
        tag.narrator = nil
        tag.originalArtist = nil
        tag.owner = nil
        tag.performers = nil
        tag.predefinedGenre = nil
        tag.producer = nil
        tag.producerKeywords = nil
        tag.publisher = nil
        tag.publisherUrl = nil
        tag.podcastUrl = nil
        tag.podcastID = nil
        tag.recordCompany = nil
        tag.recordingCopyright = nil
        tag.requirements = nil
        tag.sellerID = nil
        tag.softwareVersion = nil
        tag.soloist = nil
        tag.songDescription = nil
        tag.songwriterKeywords = nil
        tag.soundEngineer = nil
        tag.sourceCredit = nil
        tag.subtitle = nil
        tag.subtitleKeywords = nil
        tag.thanks = nil
        tag.title = nil
        tag.titleKeywords = nil
        tag.titleSort = nil
        tag.trackSubtitle = nil
        tag.tvEpisodeTitle = nil
        tag.tvNetwork = nil
        tag.tvShow = nil
        tag.tvShowDescription = nil
        tag.tvShowSort = nil
        tag.website = nil
        tag.workName = nil
        tag.writer = nil
        tag.purchaseDate = nil
        tag.releaseDate = nil
        tag.recordingDate = nil
        tag.year = nil
        try tag.removeCoverArt()
        tag["MOOD"] = nil
        tag["KEY"] = nil
        tag["ENCODINGTIME"] = nil
        tag["ORIGINAL YEAR"] = nil
        tag["ORIGINAL ALBUM"] = nil
        tag["OFFICIAL_AUDIO_FILE_URL"] = nil
        tag["iTunEXTC"] = nil
        tag["LANGUAGE"] = nil
        tag["RADIO_STATION"] = nil
        tag["COPYRIGHT URL"] = nil
        tag["TAGGINGTIME"] = nil
        tag["ORIGINAL LYRICIST"] = nil
        tag["PAYMENT_URL"] = nil
        tag["iTunSMPB"] = nil
        tag["ORIGINAL FILENAME"] = nil
        tag["OFFICIAL_RADIO_URL"] = nil
        tag["STATION_OWNER"] = nil
        tag["OFFICIAL_AUDIO_SOURCE_URL"] = nil

        let outputUrl = try localDirectory(fileName: "removeMeta", fileExtension: "m4a")
        try source.write(tag: tag, outputLocation: outputUrl)
        
        let output = try Tag(from: Mp4File(location: outputUrl))
        XCTAssertNil(output.albumID)
        XCTAssertNil(output.artistID)
        XCTAssertNil(output.bpm)
        XCTAssertNil(output.compilation)
        XCTAssertNil(output.composerID)
        XCTAssertNil(output.conductorID)
        XCTAssertNil(output.gaplessPlayback)
        XCTAssertNil(output.genreID)
        XCTAssertNil(output.mediaType)
        XCTAssertNil(output.movementCount)
        XCTAssertNil(output.movementNumber)
        XCTAssertNil(output.playlistID)
        XCTAssertNil(output.podcast)
        XCTAssertNil(output.rating)
        XCTAssertNil(output.showWorkAndMovement)
        XCTAssertNil(output.tvEpisodeNumber)
        XCTAssertNil(output.tvSeason)
        XCTAssertNil(output.appleStoreCountryID)
        XCTAssertNil(output.acknowledgment)
        XCTAssertNil(output.album)
        XCTAssertNil(output.albumArtist)
        XCTAssertNil(output.albumArtistSort)
        XCTAssertNil(output.albumSort)
        XCTAssertNil(output.arranger)
        XCTAssertNil(output.arrangerKeywords)
        XCTAssertNil(output.artDirector)
        XCTAssertNil(output.artist)
        XCTAssertNil(output.artistKeywords)
        XCTAssertNil(output.artistSort)
        XCTAssertNil(output.artistUrl)
        XCTAssertNil(output.category)
        XCTAssertNil(output.comment)
        XCTAssertNil(output.composer)
        XCTAssertNil(output.composerKeywords)
        XCTAssertNil(output.composerSort)
        XCTAssertNil(output.conductor)
        XCTAssertNil(output.copyright)
        XCTAssertNil(output.copyrightStatement)
        XCTAssertNil(output.customGenre)
        XCTAssertNil(output.description)
        XCTAssertNil(output.director)
        XCTAssertNil(output.editDateAndDescription1)
        XCTAssertNil(output.editDateAndDescription2)
        XCTAssertNil(output.editDateAndDescription3)
        XCTAssertNil(output.editDateAndDescription4)
        XCTAssertNil(output.editDateAndDescription5)
        XCTAssertNil(output.editDateAndDescription6)
        XCTAssertNil(output.editDateAndDescription7)
        XCTAssertNil(output.editDateAndDescription8)
        XCTAssertNil(output.editDateAndDescription9)
        XCTAssertNil(output.encodedBy)
        XCTAssertNil(output.encodingTool)
        XCTAssertNil(output.executiveProducer)
        XCTAssertNil(output.filmMakerUrl)
        XCTAssertNil(output.format)
        XCTAssertNil(output.grouping)
        XCTAssertNil(output.information)
        XCTAssertNil(output.isrc)
        XCTAssertNil(output.podcastKeywords)
        XCTAssertNil(output.label)
        XCTAssertNil(output.linerNotes)
        XCTAssertNil(output.longDescription)
        XCTAssertNil(output.lyricist)
        XCTAssertNil(output.lyrics)
        XCTAssertNil(output.movementName)
        XCTAssertNil(output.narrator)
        XCTAssertNil(output.originalArtist)
        XCTAssertNil(output.owner)
        XCTAssertNil(output.performers)
        XCTAssertNil(output.predefinedGenre)
        XCTAssertNil(output.producer)
        XCTAssertNil(output.producerKeywords)
        XCTAssertNil(output.publisher)
        XCTAssertNil(output.publisherUrl)
        XCTAssertNil(output.podcastUrl)
        XCTAssertNil(output.podcastID)
        XCTAssertNil(output.recordCompany)
        XCTAssertNil(output.recordingCopyright)
        XCTAssertNil(output.requirements)
        XCTAssertNil(output.sellerID)
        XCTAssertNil(output.softwareVersion)
        XCTAssertNil(output.soloist)
        XCTAssertNil(output.songDescription)
        XCTAssertNil(output.songwriterKeywords)
        XCTAssertNil(output.soundEngineer)
        XCTAssertNil(output.sourceCredit)
        XCTAssertNil(output.subtitle)
        XCTAssertNil(output.subtitleKeywords)
        XCTAssertNil(output.thanks)
        XCTAssertNil(output.title)
        XCTAssertNil(output.titleKeywords)
        XCTAssertNil(output.titleSort)
        XCTAssertNil(output.trackSubtitle)
        XCTAssertNil(output.tvEpisodeTitle)
        XCTAssertNil(output.tvNetwork)
        XCTAssertNil(output.tvShow)
        XCTAssertNil(output.tvShowDescription)
        XCTAssertNil(output.tvShowSort)
        XCTAssertNil(output.website)
        XCTAssertNil(output.workName)
        XCTAssertNil(output.writer)
        XCTAssertNil(output.purchaseDate)
        XCTAssertNil(output.releaseDate)
        XCTAssertNil(output.recordingDate)
        XCTAssertNil(output.year)
        XCTAssertNil(output.coverArt)
        XCTAssertNil(output["MOOD"])
        XCTAssertNil(output["KEY"])
        XCTAssertNil(output["ENCODINGTIME"])
        XCTAssertNil(output["ORIGINAL YEAR"])
        XCTAssertNil(output["ORIGINAL ALBUM"])
        XCTAssertNil(output["OFFICIAL_AUDIO_FILE_URL"])
        XCTAssertNil(output["iTunEXTC"])
        XCTAssertNil(output["LANGUAGE"])
        XCTAssertNil(output["RADIO_STATION"])
        XCTAssertNil(output["COPYRIGHT URL"])
        XCTAssertNil(output["TAGGINGTIME"])
        XCTAssertNil(output["ORIGINAL LYRICIST"])
        XCTAssertNil(output["PAYMENT_URL"])
        XCTAssertNil(output["iTunSMPB"])
        XCTAssertNil(output["ORIGINAL FILENAME"])
        XCTAssertNil(output["ORIGINAL_RADIO_URL"])
        XCTAssertNil(output["STATION_OWNER"])
        XCTAssertNil(output["OFFICIAL_AUDIO_SOURCE_URL"])
    }    
}
