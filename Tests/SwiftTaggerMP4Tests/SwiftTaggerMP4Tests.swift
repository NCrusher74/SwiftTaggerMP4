import XCTest
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

    func testdates() throws {
        var writing = try tag(withMeta: false)
        
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
        XCTAssertNoThrow(try file.write(using: writing, writingTo: output, fileType: .m4a))
        
        XCTAssertNoThrow(try Mp4File(location: output))
        let testFile = try Mp4File(location: output)
        XCTAssertNoThrow(try Tag(from: testFile))
        let testing = try Tag(from: testFile)
                
        XCTAssertEqual(testing.encodingTime?.year,2000)
        XCTAssertEqual(testing.encodingTime?.month, 10)
        XCTAssertEqual(testing.encodingTime?.day, 13)
        
        XCTAssertEqual(testing.releaseDate?.year, 1999)
        XCTAssertEqual(testing.releaseDate?.month, 05)
        XCTAssertEqual(testing.releaseDate?.day, 08)
        
        XCTAssertEqual(testing.recordingDate?.year, 1998)
        XCTAssertEqual(testing.recordingDate?.month, 06)
        XCTAssertEqual(testing.recordingDate?.day, 09)
        
        XCTAssertEqual(testing.purchaseDate?.year, 1997)
        XCTAssertEqual(testing.purchaseDate?.month, 07)
        XCTAssertEqual(testing.purchaseDate?.day, 10)
        
        XCTAssertEqual(testing.originalReleaseYear, 1996)
        
        XCTAssertEqual(testing.taggingTime?.year, 1995)
        XCTAssertEqual(testing.taggingTime?.month, 09)
        XCTAssertEqual(testing.taggingTime?.day, 12)
        
        XCTAssertEqual(testing.year,1994)
    }

}
