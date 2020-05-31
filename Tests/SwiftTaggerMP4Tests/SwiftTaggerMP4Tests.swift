import XCTest
@testable import SwiftTaggerMP4

final class SwiftTaggerMP4Tests: XCTestCase {
    @available(OSX 10.12, *)
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
        XCTAssertEqual(reading.bpm, 99)
        XCTAssertEqual(reading.comments, "Comments")
        XCTAssertEqual(reading.compilation, true)
        XCTAssertEqual(reading.composer, "Composer")
        XCTAssertEqual(reading.composerSort, "SortComposer")
        XCTAssertEqual(reading.conductor, "Conductor")
        XCTAssertEqual(reading.contentRating, .clean)
        XCTAssertEqual(reading.copyright, "2020 Copyright")
        XCTAssertEqual(reading.description, "Description")
//        XCTAssertEqual(reading.discNumber, [3,4])
        XCTAssertEqual(reading.encodingTool, "EncodedBy")
        XCTAssertEqual(reading.episodeNumber, 5)
        XCTAssertEqual(reading.execProducer, "ExecutiveProducer")
        XCTAssertEqual(reading.genre, "Genre")
        XCTAssertEqual(reading.grouping, "Grouping")
        XCTAssertEqual(reading.linerNotes, "LinerNotes")
        XCTAssertEqual(reading.longDescription, "LongDescription")
        XCTAssertEqual(reading.lyricist, "Lyricist")
        XCTAssertEqual(reading.lyrics, "Lyrics")
        XCTAssertEqual(reading.mediaKind, 1)
        XCTAssertEqual(reading.movementName, "MovementName")
        XCTAssertEqual(reading.movementNumber, 7)
        XCTAssertEqual(reading.network, "Network")
        XCTAssertEqual(reading.onlineExtras, "www.onlineextras.com")
        XCTAssertEqual(reading.originalArtist, "OriginalArtist")
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        let originalReleaseDate = formatter.date(from: "1998-06-07")

        XCTAssertEqual(reading.originalReleaseDate, originalReleaseDate)
        XCTAssertEqual(reading.performer, "Performer")
        XCTAssertEqual(reading.phonogramRights, "PhonogramRights")
        XCTAssertEqual(reading.podcast, true)
        XCTAssertEqual(reading.podcastCategory, "Category")
        XCTAssertEqual(reading.podcastKeywords, "Keywords")
        XCTAssertEqual(reading.podcastUrl, "http://podcastfeed.url")
        XCTAssertEqual(reading.producer, "SongProducer")
        XCTAssertEqual(reading.publisher, "Publisher")
//        let purchaseDate = formatter.date(from: "1997-08-09")
//        XCTAssertEqual(reading.purchaseDate, purchaseDate)
        XCTAssertEqual(reading.recordCompany, "Label")
        let releaseDate = formatter.date(from: "1999-05-07")
        XCTAssertEqual(reading.releaseDate, releaseDate)
        XCTAssertEqual(reading.season, 6)
        XCTAssertEqual(reading.series, "SeriesTitle")
        XCTAssertEqual(reading.seriesDescription, "SeriesDescription")
        XCTAssertEqual(reading.seriesSort, "SortSeries")
        XCTAssertEqual(reading.setSubtitle, "SetSubtitle")
        XCTAssertEqual(reading.soloist, "Soloist")
        XCTAssertEqual(reading.songDescription, "SongDescription")
        XCTAssertEqual(reading.soundEngineer, "SoundEngineer")
        XCTAssertEqual(reading.sourceCredit, "Credits")
        let taggingTime = formatter.date(from: "1996-10-11")
        XCTAssertEqual(reading.taggingTime, taggingTime)
        XCTAssertEqual(reading.thanks, "Thanks")
        XCTAssertEqual(reading.title, "Title")
        XCTAssertEqual(reading.titleSort, "SortName")
        XCTAssertEqual(reading.totalMovements, 8)
//        XCTAssertEqual(reading.trackNumber, [1,2])
        XCTAssertEqual(reading.work, "WorkName")
        let year = formatter.date(from: "1995")
        XCTAssertEqual(reading.year, year)
    }
    
    @available(OSX 10.12, *)
    func testWriting() throws {
        var writing = try tag(withMeta: false)
        
        writing.acknowledgment = "Acknowledgment"
        writing.album = "Album"
        writing.albumArtist = "Album Artist"
        writing.albumArtistSort = "Sort Album Artist"
        writing.albumSort = "Sort Album"
        writing.arranger = "Arranger"
        writing.artDirector = "Art Director"
        writing.artist = "Artist"
        writing.artistSort = "Sort Artist"
        writing.artistWebpage = "http://artist.url"
        writing.audioFileWebpage = "http://audiofile.url"
        writing.audioSourceWebpage = "http://audiosource.url"
        writing.bpm = 99
        writing.comments = "Comment Content"
        writing.compilation = true
        writing.composer = "Composer"
        writing.composerSort = "Sort Composer"
        writing.conductor = "Conductor"
        writing.contentAdvisory = .unrated
        writing.contentRating = .clean
        writing.copyright = "2020 copyright"
        writing.copyrightWebpage = "http://copyright.url"
        writing.description = "Description"
        writing.director = "Director"
        writing.discNumber = [1,2]
        writing.encodedBy = "Encoded By"
        writing.encodingTool = "Encoding Tool"
        writing.episodeNumber = 3
        writing.episodeTitle = "Episode Title"
        writing.execProducer = "Executive Producer"
        writing.fileType = .M4B
        writing.genre = "Genre"
        writing.genreID = .Audiobooks
        writing.grouping = "Grouping"
        writing.initialKey = .aFlatMajor
        writing.isrc = 901234567890
        writing.language = .eng
        writing.linerNotes = "Liner Notes"
        writing.longDescription = "Long Description"
        writing.lyricist = "Lyricist"
        writing.lyrics = "Lyricis"
        writing.mediaKind = 2
        writing.mood = "Mood"
        writing.movementName = "Movement Name"
        writing.movementNumber = 4
        writing.totalMovements = 5
        writing.narrator = "Narrator"
        writing.network = "Network"
        writing.onlineExtras = "http://onlineextras.url"
        writing.originalAlbum = "Original Album"
        writing.originalArtist = "Original Artist"
        writing.originalFilename = "Original Filename"
        writing.originalLyricist = "Original Lyricist"
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        writing.originalReleaseDate = formatter.date(from: "1998-06-07")
        writing.paymentWebpage = "http://payment.url"
        writing.performer = "Performer"
        writing.phonogramRights = "Phonogram Rights"
        writing.podcast = true
        writing.podcastCategory = "Podcast Category"
        writing.podcastID = "PodcastID"
        writing.podcastKeywords = "Podcast Keywords"
        writing.podcastUrl = "http://podcastfeed.url"
        writing.producer = "Producer"
        writing.publisher = "Publisher"
        writing.publisherWebpage = "http://publisher.url"
        writing.purchaseDate = formatter.date(from: "1997-08-09")
        writing.radioStation = "Radio Station"
        writing.radioStationOwner = "Radio Station Owner"
        writing.radioStationWebpage = "http://radiostation.url"
        writing.recordCompany = "Record Company"
        writing.releaseDate = formatter.date(from: "1999-05-07")
        writing.season = 6
        writing.series = "Series"
        writing.seriesDescription = "Series Description"
        writing.seriesSort = "Sort Series"
        writing.setSubtitle = "Set Subtitle"
        writing.soloist = "Soloist"
        writing.songDescription = "Song Description"
        writing.soundEngineer = "Sound Engineer"
        writing.sourceCredit = "Source Credit"
        writing.subtitle = "Subtitle"
        writing.taggingTime = formatter.date(from: "1996-10-11")
        writing.thanks = "Thanks"
        writing.title = "Title"
        writing.titleSort = "Sort Title"
        writing.trackNumber = [7,8]
        writing.work = "Work"
        writing.year = formatter.date(from: "1995")

        let outputUrl = try localDirectory(fileName: "test", fileExtension: "m4a")
        let file = try mp4File(withMeta: false)
        XCTAssertNoThrow(file.write(outputUrl: outputUrl, using: writing))
        
        let readBackFile = try Mp4File(location: outputUrl)
        let reading = Tag(readFrom: readBackFile)
        
        XCTAssertEqual(reading.acknowledgment, "Acknowledgment")
        XCTAssertEqual(reading.album, "Album")
        XCTAssertEqual(reading.albumArtist, "Album Artist")
        XCTAssertEqual(reading.albumArtistSort, "Sort Album Artist")
        XCTAssertEqual(reading.albumSort, "Sort Album")
        XCTAssertEqual(reading.arranger, "Arranger")
        XCTAssertEqual(reading.artDirector, "Art Director")
        XCTAssertEqual(reading.artist, "Artist")
        XCTAssertEqual(reading.artistSort, "Sort Artist")
        XCTAssertEqual(reading.artistWebpage, "http://artist.url")
        XCTAssertEqual(reading.audioFileWebpage, "http://audiofile.url")
        XCTAssertEqual(reading.audioSourceWebpage, "http://audiosource.url")
        XCTAssertEqual(reading.bpm, 99)
        XCTAssertEqual(reading.comments, "Comment Content")
        XCTAssertEqual(reading.compilation, true)
        XCTAssertEqual(reading.composer, "Composer")
        XCTAssertEqual(reading.composerSort, "Sort Composer")
        XCTAssertEqual(reading.conductor, "Conductor")
        XCTAssertEqual(reading.contentAdvisory, .unrated)
        XCTAssertEqual(reading.contentRating, .clean)
        XCTAssertEqual(reading.copyright, "2020 copyright")
        XCTAssertEqual(reading.copyrightWebpage, "http://copyright.url")
        XCTAssertEqual(reading.description, "Description")
        XCTAssertEqual(reading.director, "Director")
        XCTAssertEqual(reading.discNumber, [1,2])
        XCTAssertEqual(reading.encodedBy, "Encoded By")
        XCTAssertEqual(reading.encodingTool, "Encoding Tool")
        XCTAssertEqual(reading.episodeNumber, 3)
        XCTAssertEqual(reading.episodeTitle, "Episode Title")
        XCTAssertEqual(reading.execProducer, "Executive Producer")
        XCTAssertEqual(reading.fileType, .M4B)
        XCTAssertEqual(reading.genre, "Genre")
        XCTAssertEqual(reading.genreID, .Audiobooks)
        XCTAssertEqual(reading.grouping, "Grouping")
        XCTAssertEqual(reading.initialKey, .aFlatMajor)
        XCTAssertEqual(reading.isrc, 901234567890)
        XCTAssertEqual(reading.language, .eng)
        XCTAssertEqual(reading.linerNotes, "Liner Notes")
        XCTAssertEqual(reading.longDescription, "Long Description")
        XCTAssertEqual(reading.lyricist, "Lyricist")
        XCTAssertEqual(reading.lyrics, "Lyrics")
        XCTAssertEqual(reading.mediaKind, 2)
        XCTAssertEqual(reading.mood, "Mood")
        XCTAssertEqual(reading.movementName, "Movement Name")
        XCTAssertEqual(reading.movementNumber, 4)
        XCTAssertEqual(reading.totalMovements, 5)
        XCTAssertEqual(reading.narrator, "Narrator")
        XCTAssertEqual(reading.network, "Network")
        XCTAssertEqual(reading.onlineExtras, "http://onlineextras.com")
        XCTAssertEqual(reading.originalAlbum, "Original Album")
        XCTAssertEqual(reading.originalArtist, "Original Artist")
        XCTAssertEqual(reading.originalFilename, "Original Filename")
        XCTAssertEqual(reading.originalLyricist, "Original Lyricist")
        XCTAssertEqual(reading.originalReleaseDate, formatter.date(from: "1998-06-07"))
        XCTAssertEqual(reading.paymentWebpage, "http://payment.url")
        XCTAssertEqual(reading.performer, "Performer")
        XCTAssertEqual(reading.phonogramRights, "Phonogram Rights")
        XCTAssertEqual(reading.podcast, true)
        XCTAssertEqual(reading.podcastCategory, "Podcast Category")
        XCTAssertEqual(reading.podcastKeywords, "Podcast Keywords")
        XCTAssertEqual(reading.podcastID, "PodcastID")
        XCTAssertEqual(reading.podcastUrl, "http://podcastfeed.url")
        XCTAssertEqual(reading.producer, "Producer")
        XCTAssertEqual(reading.publisher, "Publisher")
        XCTAssertEqual(reading.publisherWebpage, "http://publisher.url")
        XCTAssertEqual(reading.purchaseDate, formatter.date(from: "1997-08-09"))
        XCTAssertEqual(reading.radioStation, "Radio Station")
        XCTAssertEqual(reading.radioStationOwner, "Radio Station Owner")
        XCTAssertEqual(reading.radioStationWebpage, "http://radiostation.url")
        XCTAssertEqual(reading.recordCompany, "Record Company")
        XCTAssertEqual(reading.releaseDate, formatter.date(from: "1999-05-07"))
        XCTAssertEqual(reading.season, 6)
        XCTAssertEqual(reading.series, "Series")
        XCTAssertEqual(reading.seriesDescription, "Series Description")
        XCTAssertEqual(reading.seriesSort, "Sort Series")
        XCTAssertEqual(reading.setSubtitle, "Set Subtitle")
        XCTAssertEqual(reading.soloist, "Soloist")
        XCTAssertEqual(reading.songDescription, "Song Description")
        XCTAssertEqual(reading.soundEngineer, "Sound Engineer")
        XCTAssertEqual(reading.sourceCredit, "Source Credit")
        XCTAssertEqual(reading.subtitle, "Subtitle")
        XCTAssertEqual(reading.taggingTime, formatter.date(from: "1996-10-11"))
        XCTAssertEqual(reading.thanks, "Thanks")
        XCTAssertEqual(reading.title, "Title")
        XCTAssertEqual(reading.titleSort, "Sort Title")
        XCTAssertEqual(reading.trackNumber, [7,8])
        XCTAssertEqual(reading.work, "Work")
        XCTAssertEqual(reading.year, formatter.date(from: "1995"))
    }
}
