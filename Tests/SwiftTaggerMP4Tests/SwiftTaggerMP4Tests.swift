import XCTest
import Cocoa
@testable import SwiftTaggerMP4

final class SwiftTaggerMP4Tests: XCTestCase {

    func testPrint() throws {
        let data = try Data(contentsOf: sampleBookUrl)
        let range = 210932 ..< 210932 + 618
        let subdata = data.subdata(in: range)
        print(subdata.hexadecimal())
    }
    /*
     */
    
    func testBasicFileParsing() throws {
        let source = try Mp4File(location: sampleBookUrl)
        XCTAssertTrue(!source.rootAtoms.isEmpty)
        XCTAssertNotNil(source.moov)
        XCTAssertTrue(!source.mdats.isEmpty)
        XCTAssertTrue(!source.moov.tracks.isEmpty)
        XCTAssertEqual(source.rootAtoms.count, 3)
        XCTAssertEqual(source.moov.mvhd.duration, 1055370)
        XCTAssertEqual(source.moov.mvhd.timeScale, 44100)
        XCTAssertEqual(source.moov.soundTrack.mdia.mdhd.timeScale, 44100)
        XCTAssertEqual(source.moov.soundTrack.mdia.mdhd.duration, 1055370)
        XCTAssertEqual(source.moov.soundTrack.tkhd.duration, 1055370)
        XCTAssertEqual(source.moov.soundTrack.mdia.minf.stbl.stts.mediaDuration, 1055370)
        XCTAssertEqual(Mp4File.mediaTimeScale, 44100)
        XCTAssertEqual(Mp4File.mediaDuration, 1055370)
        XCTAssertEqual(source.moov.chapterTrack?.mdia.minf.stbl.stts.mediaDuration, 1055370)
        XCTAssertEqual(source.moov.chapterTrack?.mdia.mdhd.timeScale, 44100)
        XCTAssertEqual(source.moov.chapterTrack?.mdia.mdhd.duration, 1055370)
        XCTAssertEqual(source.moov.chapterTrack?.tkhd.duration, 1055370)
    }
    
    func testSampleTableConverter() throws {
        let source = try Mp4File(location: sampleBookUrl)
        let chapterStarts = source.calculateChapterStarts()
        let chapterTitles = try source.getChapterTitleStrings()
        let knownChapterStarts = [0, 100002, 192013, 292014, 392004, 459020, 546000, 624019, 714016, 791013, 869018, 963007]
        let knownTitles = ["01 - ''Frost To-Night'' - Read by BK", "02 - ''Frost To-Night'' - Read by CS", "03 - ''Frost To-Night'' - Read by EL-ALP", "04 - ''Frost To-Night'' - Read by GB", "05 - ''Frost To-Night'' - Read by KARA", "06 - ''Frost To-Night'' - Read by LAH", "07 - ''Frost To-Night'' - Read by LCW", "08 - ''Frost To-Night'' - Read by MAS", "09 - ''Frost To-Night'' - Read by PS", "10 - ''Frost To-Night'' - Read by SPC", "11 - ''Frost To-Night'' - Read by TP", "12 - ''Frost To-Night'' - Read by VB"]
        
        XCTAssertEqual(chapterStarts, knownChapterStarts)
        XCTAssertEqual(chapterTitles, knownTitles)
//        print(source.calculateChapterStarts())
//        print(try source.getChapterTitleStrings())
//        let converter = try SampleTableToChapterConverter(readFrom: source)
        
    }
    @available(OSX 10.12, *)
    func testTag() throws {
        let mp4 = try Mp4File(location: sampleBookUrl)
        var source = Tag(readFrom: mp4)
        XCTAssertEqual(source.album, "''Frost To-Night''")
        XCTAssertEqual(source.title, "FrostTonight_librivox")
        XCTAssertEqual(source.artist, "Edith M. Thomas")
        XCTAssertEqual(source.customGenre, "Audiobook")
        XCTAssertEqual(source.trackNumber.track, 1)
        XCTAssertEqual(source.encodingTool, "Chapter and Verse V 1.5")
        XCTAssertEqual(source.comment, "https://archive.org/details/frost_to-night_1710.poem_librivox")
        source.metadataAtoms = [:]
        XCTAssertTrue(source.metadataAtoms.isEmpty)
        
        let calendar = Calendar(identifier: .iso8601)
        let dateComponents = DateComponents(calendar: calendar, timeZone: TimeZone(secondsFromGMT: 0) ?? .current, year: 2020, month: 09, day: 01)
        let date = calendar.date(from: dateComponents)
        
        source.acknowledgment = "Acknowledgment"
        source.album = "Album"
        source.albumID = 12345
        source.albumArtist = "Album Artist"
        source.albumArtistSort = "Album Artist Sort"
        source.albumSort = "Album Sort"
        source.appleStoreCountryID = 23456
        source.arranger = "Arranger"
        source.arrangerKeywords = ["Arranger", "Keywords"]
        source.artDirector = "Art Director"
        source.artist = "Artist"
        source.artistID = 34567
        source.artistKeywords = ["Artist", "Keywords"]
        source.artistSort = "Artist Sort"
        source.artistUrl = "www.artist.url"
        source.bpm = 99
        source.category = "Category"
        source.comment = "Comment"
        source.compilation = true
        source.composer = "Composer"
        source.composerKeywords = ["Composer", "Keywords"]
        source.composerSort = "Composer Sort"
        source.conductor = "Conductor"
        source.conductorID = 45678
        source.copyright = "2020 Copyright"
        source.copyrightStatement = "Copyright Statement"
        source.customGenre = "Genre"
        source.description = "Description"
        source.director = "Director"
        source.discNumber.disc = 1
        source.discNumber.totalDiscs = 2
        source.editDateAndDescription1 = "Edit Date and Description 1"
        source.editDateAndDescription2 = "Edit Date and Description 2"
        source.editDateAndDescription3 = "Edit Date and Description 3"
        source.editDateAndDescription4 = "Edit Date and Description 4"
        source.editDateAndDescription5 = "Edit Date and Description 5"
        source.editDateAndDescription6 = "Edit Date and Description 6"
        source.editDateAndDescription7 = "Edit Date and Description 7"
        source.editDateAndDescription8 = "Edit Date and Description 8"
        source.editDateAndDescription9 = "Edit Date and Description 9"
        source.encodedBy = "Encoded By"
        source.encodingTool = "Encoding Tool"
        source.executiveProducer = "Executive Producer"
        source.filmMakerUrl = "www.filmmaker.url"
        source.format = "Format"
        source.gaplessPlayback = true
        source.genreID = .audiobooks
        source.grouping = "Grouping"
        source.information = "Information"
        source.isrc = "123456789012"
        source.keywords = ["Key", "Words"]
        source.label = "Label"
        source.linerNotes = "Liner Notes"
        source.longDescription = "Long Description"
        source.lyricist = "Lyricist"
        source.lyrics = "Lyrics"
        source.mediaKind = .audiobook
        source.movementCount = 4
        source.movementNumber = 3
        source.movementName = "Movement Name"
        source.narrator = "Narrator"
        source.originalArtist = "Original Artist"
        source.owner = "Owner"
        source.performers = ["Performer"]
        source.playlistID = 56789
        source.podcast = true
        source.podcastID = "Podcast ID"
        source.podcastUrl = "www.podcast.url"
        source.predefinedGenre = .audiobooks
        source.producer = "Producer"
        source.producerKeywords = ["Producer", "Keywords"]
        source.publisher = "Publisher"
        source.publisherUrl = "www.publisher.url"
        source.purchaseDate = date
        source.rating = .clean
        source.recordCompany = "Record Company"
        source.recordingCopyright = "Recording Copyright"
        source.recordingDate = date
        source.releaseDate = date
        source.requirements = "Requirements"
        source.sellerID = "Seller ID"
        source.showWorkAndMovement = true
        source.softwareVersion = "Software Version"
        source.soloist = "Soloist"
        source.songDescription = "Song Description"
        source.songwriterKeywords = ["Songwriter", "Keywords"]
        source.songwriter = "Songwriter"
        source.soundEngineer = "Song Engineer"
        source.sourceCredit = "Source Credit"
        source.subtitle = "Subtitle"
        source.subtitleKeywords = ["Subtitle", "Keywords"]
        source.thanks = "Thanks"
        source.title = "Title"
        source.titleKeywords = ["Title", "Keywords"]
        source.titleSort = "Title Sort"
        source.trackNumber.track = 5
        source.trackNumber.totalTracks = 6
        source.trackSubtitle = "Track Subtitle"
        source.tvEpisodeNumber = 7
        source.tvSeason = 8
        source.tvShow = "TV Show"
        source.tvNetwork = "TV Network"
        source.tvShowSort = "TV Show Sort"
        source.tvEpisodeTitle = "TV Episode Title"
        source.tvShowDescription = "TV Show Description"
        source.website = "www.website.url"
        source.workName = "Work Name"
        source.writer = "Writer"
        source.year = 2020
        
        XCTAssertEqual(source.acknowledgment,"Acknowledgment")
        XCTAssertEqual(source.album,"Album")
        XCTAssertEqual(source.albumID,12345)
        XCTAssertEqual(source.albumArtist,"Album Artist")
        XCTAssertEqual(source.albumArtistSort,"Album Artist Sort")
        XCTAssertEqual(source.albumSort,"Album Sort")
        XCTAssertEqual(source.appleStoreCountryID,23456)
        XCTAssertEqual(source.arranger,"Arranger")
        XCTAssertEqual(source.arrangerKeywords,["Arranger", "Keywords"])
        XCTAssertEqual(source.artDirector,"Art Director")
        XCTAssertEqual(source.artist,"Artist")
        XCTAssertEqual(source.artistID,34567)
        XCTAssertEqual(source.artistKeywords,["Artist", "Keywords"])
        XCTAssertEqual(source.artistSort,"Artist Sort")
        XCTAssertEqual(source.artistUrl,"www.artist.url")
        XCTAssertEqual(source.bpm,99)
        XCTAssertEqual(source.category,"Category")
        XCTAssertEqual(source.comment,"Comment")
        XCTAssertEqual(source.compilation,true)
        XCTAssertEqual(source.composer,"Composer")
        XCTAssertEqual(source.composerKeywords,["Composer", "Keywords"])
        XCTAssertEqual(source.composerSort,"Composer Sort")
        XCTAssertEqual(source.conductor,"Conductor")
        XCTAssertEqual(source.conductorID,45678)
        XCTAssertEqual(source.copyright,"2020 Copyright")
        XCTAssertEqual(source.copyrightStatement,"Copyright Statement")
        XCTAssertEqual(source.customGenre,"Genre")
        XCTAssertEqual(source.description,"Description")
        XCTAssertEqual(source.director,"Director")
        XCTAssertEqual(source.discNumber.disc,1)
        XCTAssertEqual(source.discNumber.totalDiscs,2)
        XCTAssertEqual(source.editDateAndDescription1,"Edit Date and Description 1")
        XCTAssertEqual(source.editDateAndDescription2,"Edit Date and Description 2")
        XCTAssertEqual(source.editDateAndDescription3,"Edit Date and Description 3")
        XCTAssertEqual(source.editDateAndDescription4,"Edit Date and Description 4")
        XCTAssertEqual(source.editDateAndDescription5,"Edit Date and Description 5")
        XCTAssertEqual(source.editDateAndDescription6,"Edit Date and Description 6")
        XCTAssertEqual(source.editDateAndDescription7,"Edit Date and Description 7")
        XCTAssertEqual(source.editDateAndDescription8,"Edit Date and Description 8")
        XCTAssertEqual(source.editDateAndDescription9,"Edit Date and Description 9")
        XCTAssertEqual(source.encodedBy,"Encoded By")
        XCTAssertEqual(source.encodingTool,"Encoding Tool")
        XCTAssertEqual(source.executiveProducer,"Executive Producer")
        XCTAssertEqual(source.filmMakerUrl,"www.filmmaker.url")
        XCTAssertEqual(source.format,"Format")
        XCTAssertEqual(source.gaplessPlayback,true)
        XCTAssertEqual(source.genreID,.audiobooks)
        XCTAssertEqual(source.grouping,"Grouping")
        XCTAssertEqual(source.information,"Information")
        XCTAssertEqual(source.isrc,"123456789012")
        XCTAssertEqual(source.keywords,["Key", "Words"])
        XCTAssertEqual(source.label,"Label")
        XCTAssertEqual(source.linerNotes,"Liner Notes")
        XCTAssertEqual(source.longDescription,"Long Description")
        XCTAssertEqual(source.lyricist,"Lyricist")
        XCTAssertEqual(source.lyrics,"Lyrics")
        XCTAssertEqual(source.mediaKind,.audiobook)
        XCTAssertEqual(source.movementCount,4)
        XCTAssertEqual(source.movementNumber,3)
        XCTAssertEqual(source.movementName,"Movement Name")
        XCTAssertEqual(source.narrator,"Narrator")
        XCTAssertEqual(source.originalArtist,"Original Artist")
        XCTAssertEqual(source.owner,"Owner")
        XCTAssertEqual(source.performers,["Performer"])
        XCTAssertEqual(source.playlistID,56789)
        XCTAssertEqual(source.podcast,true)
        XCTAssertEqual(source.podcastID,"Podcast ID")
        XCTAssertEqual(source.podcastUrl,"www.podcast.url")
        XCTAssertEqual(source.predefinedGenre,.audiobooks)
        XCTAssertEqual(source.producer,"Producer")
        XCTAssertEqual(source.producerKeywords,["Producer", "Keywords"])
        XCTAssertEqual(source.publisher,"Publisher")
        XCTAssertEqual(source.publisherUrl,"www.publisher.url")
        XCTAssertEqual(source.purchaseDate, date)
        XCTAssertEqual(source.rating,.clean)
        XCTAssertEqual(source.recordCompany,"Record Company")
        XCTAssertEqual(source.recordingCopyright,"Recording Copyright")
        XCTAssertEqual(source.recordingDate, date)
        XCTAssertEqual(source.releaseDate, date)
        XCTAssertEqual(source.requirements,"Requirements")
        XCTAssertEqual(source.sellerID,"Seller ID")
        XCTAssertEqual(source.showWorkAndMovement,true)
        XCTAssertEqual(source.softwareVersion,"Software Version")
        XCTAssertEqual(source.soloist,"Soloist")
        XCTAssertEqual(source.songDescription,"Song Description")
        XCTAssertEqual(source.songwriterKeywords,["Songwriter", "Keywords"])
        XCTAssertEqual(source.songwriter,"Songwriter")
        XCTAssertEqual(source.soundEngineer,"Song Engineer")
        XCTAssertEqual(source.sourceCredit,"Source Credit")
        XCTAssertEqual(source.subtitle,"Subtitle")
        XCTAssertEqual(source.subtitleKeywords,["Subtitle", "Keywords"])
        XCTAssertEqual(source.thanks,"Thanks")
        XCTAssertEqual(source.title,"Title")
        XCTAssertEqual(source.titleKeywords,["Title", "Keywords"])
        XCTAssertEqual(source.titleSort,"Title Sort")
        XCTAssertEqual(source.trackNumber.track,5)
        XCTAssertEqual(source.trackNumber.totalTracks,6)
        XCTAssertEqual(source.trackSubtitle,"Track Subtitle")
        XCTAssertEqual(source.tvEpisodeNumber,7)
        XCTAssertEqual(source.tvSeason,8)
        XCTAssertEqual(source.tvShow,"TV Show")
        XCTAssertEqual(source.tvNetwork,"TV Network")
        XCTAssertEqual(source.tvShowSort,"TV Show Sort")
        XCTAssertEqual(source.tvEpisodeTitle,"TV Episode Title")
        XCTAssertEqual(source.tvShowDescription,"TV Show Description")
        XCTAssertEqual(source.website,"www.website.url")
        XCTAssertEqual(source.workName,"Work Name")
        XCTAssertEqual(source.writer,"Writer")
        XCTAssertEqual(source.year,2020)
    }
}
