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
        tag.keywords = ["Key","Words"]
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
        try tag.setFreeformMetadata(name: "UNKNOWN", stringValue: "Unknown")
        
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
        XCTAssertEqual(output.keywords, ["Key", "Words"])
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
        XCTAssertEqual(try output.getFreeformMetadata(name: "UNKNOWN"), "Unknown")
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
        tag.discNumber = [2,3]
        tag.trackNumber = [4,5]
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
        XCTAssertEqual(output.discNumber, [2,3])
        XCTAssertEqual(output.trackNumber, [4,5])
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

}
