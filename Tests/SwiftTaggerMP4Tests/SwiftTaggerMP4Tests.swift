import XCTest
import SwiftLanguageAndLocaleCodes
import iTunesGenreID

@testable import SwiftTaggerMP4


final class SwiftTaggerMP4Tests: XCTestCase {    
    func testAddChapter() throws {
        let mp4 = try Mp4File(location: sampleNoMeta)
        var tag = try Tag(mp4File: mp4)
        tag.addChapter(startTime: 0, title: "Chapter 01")
        tag.addChapter(startTime: 800, title: "Chapter 02")
        tag.addChapter(startTime: 1950, title: "Chapter 03")
        tag.addChapter(startTime: 3800, title: "Chapter 04")

        let outputUrl = tempOutputDirectory
        try mp4.write(tag: tag, to: outputUrl)
        
        let knownTitles = ["Chapter 01",
                           "Chapter 02",
                           "Chapter 03",
                           "Chapter 04"]
        let knownStarts = [0, 800, 1950, 3800]
        
        let outputMp4 = try Mp4File(location: outputUrl)
        let outputTag = try Tag(mp4File: outputMp4)
        XCTAssertEqual(outputTag.chapterHandler.chapterStarts, knownStarts)
        XCTAssertEqual(outputTag.chapterHandler.chapterTitles, knownTitles)
        XCTAssertEqual(outputMp4.moov.udta?.chpl?.chapterCount, 4)
        var chplTitles = [String]()
        var chplStarts = [Int]()
        for entry in outputMp4.moov.udta?.chpl?.chapterTable ?? [] {
            chplTitles.append(entry.title)
            chplStarts.append(entry.startTime)
        }
        XCTAssertEqual(chplTitles, knownTitles)
        XCTAssertEqual(chplStarts, knownStarts)
    }
    
    func testRemoveSingleChapter() throws {
        let mp4 = try Mp4File(location: sampleBookCVUrl)
        var tag = try Tag(mp4File: mp4)
        tag.removeChapter(startTime: 192013)
        tag.removeChapter(startTime: 624020)

        let outputUrl = tempOutputDirectory
        try mp4.write(tag: tag, to: outputUrl)
        
        let knownTitles = ["01 - \'\'Frost To-Night\'\' - Read by BK",
                           "02 - \'\'Frost To-Night\'\' - Read by CS",
                           "04 - \'\'Frost To-Night\'\' - Read by GB",
                           "05 - \'\'Frost To-Night\'\' - Read by KARA",
                           "06 - \'\'Frost To-Night\'\' - Read by LAH",
                           "07 - \'\'Frost To-Night\'\' - Read by LCW",
                           "09 - \'\'Frost To-Night\'\' - Read by PS",
                           "10 - \'\'Frost To-Night\'\' - Read by SPC",
                           "11 - \'\'Frost To-Night\'\' - Read by TP",
                           "12 - \'\'Frost To-Night\'\' - Read by VB"]
        let knownStarts = [0, 100003, 292014, 392005, 459021, 546001, 714016, 791013, 869018, 963007]

        let outputMp4 = try Mp4File(location: outputUrl)
        let outputTag = try Tag(mp4File: outputMp4)
        XCTAssertEqual(outputTag.chapterHandler.chapterStarts, knownStarts)
        XCTAssertEqual(outputTag.chapterHandler.chapterTitles, knownTitles)
        XCTAssertEqual(outputMp4.moov.udta?.chpl?.chapterCount, 10)
        var chplTitles = [String]()
        var chplStarts = [Int]()
        for entry in outputMp4.moov.udta?.chpl?.chapterTable ?? [] {
            chplTitles.append(entry.title)
            chplStarts.append(entry.startTime)
        }
        XCTAssertEqual(chplTitles, knownTitles)
        XCTAssertEqual(chplStarts, knownStarts)
    }

    func testRemoveAllChapters() throws {
        let mp4 = try Mp4File(location: sampleBookCVUrl)
        var tag = try Tag(mp4File: mp4)
        tag.removeAllChapters()
        
        let outputUrl = tempOutputDirectory
        try mp4.write(tag: tag, to: outputUrl)
        let outputMp4 = try Mp4File(location: outputUrl)
        let outputTag = try Tag(mp4File: outputMp4)
        XCTAssertEqual(outputMp4.duration, 46541824.0)
        XCTAssertTrue(outputTag.chapterList.isEmpty)
        XCTAssertNil(outputMp4.moov.chapterTrack)
        XCTAssertNil(outputMp4.moov.udta?.chpl)
        XCTAssertNil(outputMp4.moov.chapterTrackID)
        XCTAssertNil(outputMp4.moov.soundTrack.tref)
    }
    
    func testChapterOutput() throws {
        let mp4 = try Mp4File(location: sampleBookCVUrl)
        let outputUrl = tempOutputDirectory
        let sourceTag = try Tag(mp4File: mp4)
        try mp4.write(tag: sourceTag, to: outputUrl)

        let outputMp4 = try Mp4File(location: outputUrl)
        XCTAssertEqual(outputMp4.duration, 46541824.0)
        let tag = try Tag(mp4File: outputMp4)
        let knownTitles = ["01 - \'\'Frost To-Night\'\' - Read by BK",
                           "02 - \'\'Frost To-Night\'\' - Read by CS",
                           "03 - \'\'Frost To-Night\'\' - Read by EL-ALP",
                           "04 - \'\'Frost To-Night\'\' - Read by GB",
                           "05 - \'\'Frost To-Night\'\' - Read by KARA",
                           "06 - \'\'Frost To-Night\'\' - Read by LAH",
                           "07 - \'\'Frost To-Night\'\' - Read by LCW",
                           "08 - \'\'Frost To-Night\'\' - Read by MAS",
                           "09 - \'\'Frost To-Night\'\' - Read by PS",
                           "10 - \'\'Frost To-Night\'\' - Read by SPC",
                           "11 - \'\'Frost To-Night\'\' - Read by TP",
                           "12 - \'\'Frost To-Night\'\' - Read by VB"]
        let knownStarts = [0, 100003, 192013, 292014, 392005, 459021, 546001, 624020, 714016, 791013, 869018, 963007]
        XCTAssertEqual(tag.chapterHandler.chapterStarts, knownStarts)
        XCTAssertEqual(tag.chapterHandler.chapterTitles, knownTitles)
        XCTAssertEqual(outputMp4.moov.udta?.chpl?.chapterCount, 12)
        var chplTitles = [String]()
        var chplStarts = [Int]()
        for entry in outputMp4.moov.udta?.chpl?.chapterTable ?? [] {
            chplTitles.append(entry.title)
            chplStarts.append(entry.startTime)
        }
        XCTAssertEqual(chplTitles, knownTitles)
        XCTAssertEqual(chplStarts, knownStarts)
    }

    func testChapterParsing() throws {
        let mp4 = try Mp4File(location: sampleBookCVUrl)
        let tag = try Tag(mp4File: mp4)
        
        let knownTitles = ["01 - \'\'Frost To-Night\'\' - Read by BK",
                           "02 - \'\'Frost To-Night\'\' - Read by CS",
                           "03 - \'\'Frost To-Night\'\' - Read by EL-ALP",
                           "04 - \'\'Frost To-Night\'\' - Read by GB",
                           "05 - \'\'Frost To-Night\'\' - Read by KARA",
                           "06 - \'\'Frost To-Night\'\' - Read by LAH",
                           "07 - \'\'Frost To-Night\'\' - Read by LCW",
                           "08 - \'\'Frost To-Night\'\' - Read by MAS",
                           "09 - \'\'Frost To-Night\'\' - Read by PS",
                           "10 - \'\'Frost To-Night\'\' - Read by SPC",
                           "11 - \'\'Frost To-Night\'\' - Read by TP",
                           "12 - \'\'Frost To-Night\'\' - Read by VB"]
        let knownStarts = [0, 100003, 192013, 292014, 392005, 459021, 546001, 624020, 714016, 791013, 869018, 963007]
        XCTAssertEqual(tag.chapterHandler.chapterStarts, knownStarts)
        XCTAssertEqual(tag.chapterHandler.chapterTitles, knownTitles)
    }
    
    func testBasicFileParsing() throws {
        let source = try Mp4File(location: sampleBookCVUrl)
        XCTAssertTrue(!source.rootAtoms.isEmpty)
        XCTAssertNotNil(source.moov)
        XCTAssertTrue(!source.mdats.isEmpty)
        let tracks = source.moov.children.filter({$0.identifier == "trak"})
        XCTAssertTrue(!tracks.isEmpty)
        XCTAssertEqual(source.rootAtoms.count, 3)
        XCTAssertEqual(source.moov.mvhd.duration, 46541824.0)
        XCTAssertEqual(source.moov.mvhd.timeScale, 44100)
        XCTAssertEqual(source.moov.soundTrack.mdia.mdhd.timeScale, 44100)
        XCTAssertEqual(source.moov.soundTrack.mdia.mdhd.duration, 46541824.0)
        XCTAssertEqual(source.moov.soundTrack.tkhd.duration, 46541824.0)
        XCTAssertEqual(source.moov.soundTrack.mdia.minf.stbl.stts.mediaDuration, 46541824)
        XCTAssertEqual(source.moov.chapterTrack?.mdia.minf.stbl.stts.mediaDuration, 46541824)
        XCTAssertEqual(source.moov.chapterTrack?.mdia.mdhd.timeScale, 44100)
        XCTAssertEqual(source.moov.chapterTrack?.mdia.mdhd.duration, 46541824.0)
        XCTAssertEqual(source.moov.chapterTrack?.tkhd.duration, 46541824.0)
    }
    
    func testRemoveMetadata() throws {
        let mp4 = try Mp4File(location: sampleBookCVUrl)
        var tag = try Tag(mp4File: mp4)
        XCTAssertEqual(tag.album, "''Frost To-Night''")
        XCTAssertEqual(tag.title, "FrostTonight_librivox")
        XCTAssertEqual(tag.artist, "Edith M. Thomas")
        XCTAssertEqual(tag.customGenre, "Audiobook")
        XCTAssertEqual(tag.trackNumber.index, 1)
        XCTAssertEqual(tag.encodingTool, "Chapter and Verse V 1.5")
        XCTAssertEqual(tag.comment, "https://archive.org/details/frost_to-night_1710.poem_librivox")
        tag.removeAllMetadata()
        XCTAssertTrue(tag.metadataAtoms.isEmpty)
        XCTAssertTrue(tag.metadataAtoms.isEmpty)
//        let outputUrl = try localDirectory(fileName: "test-removeMeta", fileExtension: "m4b")
        let outputUrl = tempOutputDirectory
        try mp4.write(tag: tag, to: outputUrl)
        
        let outputMp4 = try Mp4File(location: outputUrl)
        let output = try Tag(mp4File: outputMp4)
        XCTAssertTrue(output.metadataAtoms.isEmpty)
        XCTAssertTrue(output.metadataAtoms.isEmpty)
    }
    
    func testTag() throws {
        let mp4 = try Mp4File(location: sampleBookCVUrl)
        var tag = try Tag(mp4File: mp4)
        XCTAssertEqual(tag.album, "''Frost To-Night''")
        XCTAssertEqual(tag.title, "FrostTonight_librivox")
        XCTAssertEqual(tag.artist, "Edith M. Thomas")
        XCTAssertEqual(tag.customGenre, "Audiobook")
        XCTAssertEqual(tag.trackNumber.index, 1)
        XCTAssertEqual(tag.encodingTool, "Chapter and Verse V 1.5")
        XCTAssertEqual(tag.comment, "https://archive.org/details/frost_to-night_1710.poem_librivox")
        tag.removeAllMetadata()
        XCTAssertTrue(tag.metadataAtoms.isEmpty)
        
        let calendar = Calendar(identifier: .iso8601)
        let dateComponents = DateComponents(calendar: calendar, timeZone: TimeZone(secondsFromGMT: 0) ?? .current, year: 2020, month: 09, day: 01)
        let date = calendar.date(from: dateComponents)
        
        tag.removeAllChapters()
        XCTAssertTrue(tag.chapterList.isEmpty)

        tag.acknowledgment = "Acknowledgment"
        tag.album = "Album"
        tag.albumArtist = "Album Artist"
        tag.albumArtistSort = "Album Artist Sort"
        tag.albumSort = "Album Sort"
        tag.appleStoreCountryID = 23456
        tag.arranger = "Arranger"
        tag.arrangerKeywords = ["Arranger", "Keywords"]
        tag.artDirector = "Art Director"
        tag.artist = "Artist"
        tag.artistID = 34567
        tag.artistKeywords = ["Artist", "Keywords"]
        tag.artistSort = "Artist Sort"
        tag.artistUrl = "www.artist.url"
        tag.bpm = 99
        tag.category = "Category"
        tag.comment = "Comment"
        tag.compilation = true
        tag.composer = "Composer"
        tag.composerKeywords = ["Composer", "Keywords"]
        tag.composerSort = "Composer Sort"
        tag.conductor = "Conductor"
        tag.conductorID = 45678
        tag.copyright = "2020 Copyright"
        tag.customGenre = "Genre"
        tag.description = "Description"
        tag.director = "Director"
        tag.discNumber.index = 1
        tag.discNumber.total = 2
        tag.editDateAndDescription1 = "Edit Date and Description 1"
        tag.editDateAndDescription2 = "Edit Date and Description 2"
        tag.editDateAndDescription3 = "Edit Date and Description 3"
        tag.editDateAndDescription4 = "Edit Date and Description 4"
        tag.editDateAndDescription5 = "Edit Date and Description 5"
        tag.editDateAndDescription6 = "Edit Date and Description 6"
        tag.editDateAndDescription7 = "Edit Date and Description 7"
        tag.editDateAndDescription8 = "Edit Date and Description 8"
        tag.editDateAndDescription9 = "Edit Date and Description 9"
        tag.encodedBy = "Encoded By"
        tag.encodingTool = "Encoding Tool"
        tag.executiveProducer = "Executive Producer"
        tag.labelUrl = "www.filmmaker.url"
        tag.format = "Format"
        tag.gaplessPlayback = true
        tag.genreID = .audiobooks(.audiobooks)
        tag.grouping = "Grouping"
        tag.information = "Information"
        tag.isrc = "123456789012"
        tag.iTunesAccount = "iTunes Account"
        tag.iTunesAccountType = 123
        tag.keywords = ["Key", "Words"]
        tag.label = "Label"
        tag.linerNotes = "Liner Notes"
        tag.longDescription = "Long Description"
        tag.lyricist = "Lyricist"
        tag.lyrics = "Lyrics"
        tag.mediaKind = .audiobook
        tag.movementCount = 4
        tag.movementNumber = 3
        tag.movement = "Movement Name"
        tag.narrator = "Narrator"
        tag.originalArtist = "Original Artist"
        tag.owner = "Owner"
        tag.performers = ["Performer"]
        tag.playlistID = 56789
        tag.podcast = true
        tag.podcastID = "Podcast ID"
        tag.podcastFeed = "www.podcast.url"
        tag.predefinedGenre = .audiobooks(.audiobooks)
        tag.producer = "Producer"
        tag.producerKeywords = ["Producer", "Keywords"]
        tag.publisher = "Publisher"
        tag.recordCompanyUrl = "www.publisher.url"
        tag.purchaseDate = date
        tag.rating = .clean
        tag.recordCompany = "Record Company"
        tag.recordingCopyright = "Recording Copyright"
        tag.recordingDate = date
        tag.releaseDate = date
        tag.requirements = "Requirements"
        tag.sellerID = "Seller ID"
        tag.showWorkAndMovement = true
        tag.softwareVersion = "Software Version"
        tag.soloist = "Soloist"
        tag.songDescription = "Song Description"
        tag.songwriterKeywords = ["Songwriter", "Keywords"]
        tag.songwriter = "Songwriter"
        tag.soundEngineer = "Song Engineer"
        tag.sourceCredit = "Source Credit"
        tag.subtitle = "Subtitle"
        tag.subtitleKeywords = ["Subtitle", "Keywords"]
        tag.thanks = "Thanks"
        tag.title = "Title"
        tag.titleKeywords = ["Title", "Keywords"]
        tag.titleSort = "Title Sort"
        tag.trackNumber.index = 5
        tag.trackNumber.total = 6
        tag.trackSubtitle = "Track Subtitle"
        tag.tvEpisodeNumber = 7
        tag.tvSeason = 8
        tag.tvShow = "TV Show"
        tag.tvNetwork = "TV Network"
        tag.tvShowSort = "TV Show Sort"
        tag.tvEpisodeTitle = "TV Episode Title"
        tag.tvShowDescription = "TV Show Description"
        tag.website = "www.website.url"
        tag.workName = "Work Name"
        tag.writer = "Writer"
        tag.year = 2020
        tag["Unknown"] = "unknown"
        try tag.setCoverArt(location: sampleCover)
        
        tag.addChapter(startTime: 0, title: "01 - Read by BK")
        tag.addChapter(startTime: 100003, title: "02 - Read by CS")
        tag.addChapter(startTime: 192013, title: "03 - Read by EL-ALP")
        tag.addChapter(startTime: 292014, title: "04 - Read by GB")
        tag.addChapter(startTime: 392005, title: "05 - Read by KARA")
        tag.addChapter(startTime: 459021, title: "06 - Read by LAH")
        tag.addChapter(startTime: 546001, title: "07 - Read by LCW")
        tag.addChapter(startTime: 624020, title: "08 - Read by MAS")
        tag.addChapter(startTime: 714016, title: "09 - Read by PS")
        tag.addChapter(startTime: 791013, title: "10 - Read by SPC")
        tag.addChapter(startTime: 869018, title: "11 - Read by TP")
        tag.addChapter(startTime: 963007, title: "12 - Read by VB")
        
        let outputUrl = tempOutputDirectory
        try mp4.write(tag: tag, to: outputUrl)
                
        let outputMp4 = try Mp4File(location: outputUrl)
        let output = try Tag(mp4File: outputMp4)

        let knownTitles = ["01 - Read by BK",
                           "02 - Read by CS",
                           "03 - Read by EL-ALP",
                           "04 - Read by GB",
                           "05 - Read by KARA",
                           "06 - Read by LAH",
                           "07 - Read by LCW",
                           "08 - Read by MAS",
                           "09 - Read by PS",
                           "10 - Read by SPC",
                           "11 - Read by TP",
                           "12 - Read by VB"]
        let knownStarts = [0, 100003, 192013, 292014, 392005, 459021, 546001, 624020, 714016, 791013, 869018, 963007]
        
        XCTAssertEqual(output.acknowledgment,"Acknowledgment")
        XCTAssertEqual(output.album,"Album")
        XCTAssertEqual(output.albumArtist,"Album Artist")
        XCTAssertEqual(output.albumArtistSort,"Album Artist Sort")
        XCTAssertEqual(output.albumSort,"Album Sort")
        XCTAssertEqual(output.appleStoreCountryID,23456)
        XCTAssertEqual(output.arranger,"Arranger")
        XCTAssertEqual(output.arrangerKeywords,["Arranger", "Keywords"])
        XCTAssertEqual(output.artDirector,"Art Director")
        XCTAssertEqual(output.artist,"Artist")
        XCTAssertEqual(output.artistID,34567)
        XCTAssertEqual(output.artistKeywords,["Artist", "Keywords"])
        XCTAssertEqual(output.artistSort,"Artist Sort")
        XCTAssertEqual(output.artistUrl,"www.artist.url")
        XCTAssertEqual(output.bpm,99)
        XCTAssertEqual(output.category,"Category")
        XCTAssertEqual(output.comment,"Comment")
        XCTAssertEqual(output.compilation,true)
        XCTAssertEqual(output.composer,"Composer")
        XCTAssertEqual(output.composerKeywords,["Composer", "Keywords"])
        XCTAssertEqual(output.composerSort,"Composer Sort")
        XCTAssertEqual(output.conductor,"Conductor")
        XCTAssertEqual(output.conductorID,45678)
        XCTAssertEqual(output.copyright,"2020 Copyright")
        XCTAssertEqual(output.customGenre,"Genre")
        XCTAssertEqual(output.description,"Description")
        XCTAssertEqual(output.director,"Director")
        XCTAssertEqual(output.discNumber.index,1)
        XCTAssertEqual(output.discNumber.total,2)
        XCTAssertEqual(output.editDateAndDescription1,"Edit Date and Description 1")
        XCTAssertEqual(output.editDateAndDescription2,"Edit Date and Description 2")
        XCTAssertEqual(output.editDateAndDescription3,"Edit Date and Description 3")
        XCTAssertEqual(output.editDateAndDescription4,"Edit Date and Description 4")
        XCTAssertEqual(output.editDateAndDescription5,"Edit Date and Description 5")
        XCTAssertEqual(output.editDateAndDescription6,"Edit Date and Description 6")
        XCTAssertEqual(output.editDateAndDescription7,"Edit Date and Description 7")
        XCTAssertEqual(output.editDateAndDescription8,"Edit Date and Description 8")
        XCTAssertEqual(output.editDateAndDescription9,"Edit Date and Description 9")
        XCTAssertEqual(output.encodedBy,"Encoded By")
        XCTAssertEqual(output.encodingTool,"Encoding Tool")
        XCTAssertEqual(output.executiveProducer,"Executive Producer")
        XCTAssertEqual(output.labelUrl,"www.filmmaker.url")
        XCTAssertEqual(output.format,"Format")
        XCTAssertEqual(output.gaplessPlayback,true)
        XCTAssertEqual(output.genreID?.identifier,Genre.audiobooks(.audiobooks).identifier)
        XCTAssertEqual(output.grouping,"Grouping")
        XCTAssertEqual(output.information,"Information")
        XCTAssertEqual(output.isrc,"123456789012")
        XCTAssertEqual(output.iTunesAccount, "iTunes Account")
        XCTAssertEqual(output.iTunesAccountType,123)
        XCTAssertEqual(output.keywords,["Key", "Words"])
        XCTAssertEqual(output.label,"Label")
        XCTAssertEqual(output.linerNotes,"Liner Notes")
        XCTAssertEqual(output.longDescription,"Long Description")
        XCTAssertEqual(output.lyricist,"Lyricist")
        XCTAssertEqual(output.lyrics,"Lyrics")
        XCTAssertEqual(output.mediaKind,.audiobook)
        XCTAssertEqual(output.movementCount,4)
        XCTAssertEqual(output.movementNumber,3)
        XCTAssertEqual(output.movement,"Movement Name")
        XCTAssertEqual(output.narrator,"Narrator")
        XCTAssertEqual(output.originalArtist,"Original Artist")
        XCTAssertEqual(output.owner,"Owner")
        XCTAssertEqual(output.performers,["Performer"])
        XCTAssertEqual(output.playlistID,56789)
        XCTAssertEqual(output.podcast,true)
        XCTAssertEqual(output.podcastID,"Podcast ID")
        XCTAssertEqual(output.podcastFeed,"www.podcast.url")
        XCTAssertEqual(output.predefinedGenre?.stringValue,Genre.audiobooks(.audiobooks).stringValue)
        XCTAssertEqual(output.producer,"Producer")
        XCTAssertEqual(output.producerKeywords,["Producer", "Keywords"])
        XCTAssertEqual(output.publisher,"Publisher")
        XCTAssertEqual(output.recordCompanyUrl,"www.publisher.url")
        XCTAssertEqual(output.purchaseDate, date)
        XCTAssertEqual(output.rating,.clean)
        XCTAssertEqual(output.recordCompany,"Record Company")
        XCTAssertEqual(output.recordingCopyright,"Recording Copyright")
        XCTAssertEqual(output.recordingDate, date)
        XCTAssertEqual(output.releaseDate, date)
        XCTAssertEqual(output.requirements,"Requirements")
        XCTAssertEqual(output.sellerID,"Seller ID")
        XCTAssertEqual(output.showWorkAndMovement,true)
        XCTAssertEqual(output.softwareVersion,"Software Version")
        XCTAssertEqual(output.soloist,"Soloist")
        XCTAssertEqual(output.songDescription,"Song Description")
        XCTAssertEqual(output.songwriterKeywords,["Songwriter", "Keywords"])
        XCTAssertEqual(output.songwriter,"Songwriter")
        XCTAssertEqual(output.soundEngineer,"Song Engineer")
        XCTAssertEqual(output.sourceCredit,"Source Credit")
        XCTAssertEqual(output.subtitle,"Subtitle")
        XCTAssertEqual(output.subtitleKeywords,["Subtitle", "Keywords"])
        XCTAssertEqual(output.thanks,"Thanks")
        XCTAssertEqual(output.title,"Title")
        XCTAssertEqual(output.titleKeywords,["Title", "Keywords"])
        XCTAssertEqual(output.titleSort,"Title Sort")
        XCTAssertEqual(output.trackNumber.index,5)
        XCTAssertEqual(output.trackNumber.total,6)
        XCTAssertEqual(output.trackSubtitle,"Track Subtitle")
        XCTAssertEqual(output.tvEpisodeNumber,7)
        XCTAssertEqual(output.tvSeason,8)
        XCTAssertEqual(output.tvShow,"TV Show")
        XCTAssertEqual(output.tvNetwork,"TV Network")
        XCTAssertEqual(output.tvShowSort,"TV Show Sort")
        XCTAssertEqual(output.tvEpisodeTitle,"TV Episode Title")
        XCTAssertEqual(output.tvShowDescription,"TV Show Description")
        XCTAssertEqual(output.website,"www.website.url")
        XCTAssertEqual(output.workName,"Work Name")
        XCTAssertEqual(output.writer,"Writer")
        XCTAssertEqual(output.year,2020)
        XCTAssertEqual(output.chapterHandler.chapterTitles, knownTitles)
        XCTAssertEqual(output.chapterHandler.chapterStarts, knownStarts)
        XCTAssertNotNil(output.coverArt)
        XCTAssertEqual(output["Unknown"], "unknown")
    }
    
    func testLanguage() throws {
        let mp4 = try Mp4File(location: sampleBookSublerUrl)
        var tag = try Tag(mp4File: mp4)
        XCTAssertEqual(mp4.languages, [.english])
        XCTAssertEqual(tag.languages, [.english])
        tag.languages = [.unspecified]
        let outputUrl = tempOutputDirectory

        try mp4.write(tag: tag, to: outputUrl)
                
        let output = try Mp4File(location: outputUrl)
        let outputTag = try Tag(mp4File: output)
        XCTAssertNil(output.languages)
        XCTAssertEqual(outputTag.languages, [.unspecified])
    }
    
    func testMetadataOnBlankFile() throws {
        let mp4 = try Mp4File(location: sampleNoMeta)
        var tag = try Tag(mp4File: mp4)

        var components = DateComponents()
        var calendar = Calendar(identifier: .iso8601)
        calendar.timeZone = TimeZone(secondsFromGMT: 0) ?? .current
        components.year = 1995
        components.month = 06
        components.day = 17
        let date = calendar.date(from: components)

        tag.album = "Album"
        tag.iTunesAccountType = 12
        tag.artist = "Artist"
        tag.artistID = 34567890
        tag.artistKeywords = ["Artist", "Keywords"]
        tag.artistSort = "Artist Sort"
        tag.compilation = true
        tag.contentRating = .au_Movie_G("Notes")
        tag.languages = [.english]
        tag.duration = 5016
        tag.releaseDate = date
        tag.trackNumber.index = 7
        tag.trackNumber.total = 8
        tag.year = 1992

        tag.addChapter(startTime: 0, title: "Chapter 01")
        tag.addChapter(startTime: 700, title: "Chapter 02")
        tag.addChapter(startTime: 1670, title: "Chapter 03")
        tag.addChapter(startTime: 3165, title: "Chapter 04")
        tag.addChapter(startTime: 3976, title: "Chapter 05")

        let outputUrl = tempOutputDirectory
//        let outputUrl = try localOutputDirectory("test")
        XCTAssertNoThrow(try mp4.write(tag: tag, to: outputUrl))
        
        let outputMp4 = try Mp4File(location: outputUrl)
        let output = try outputMp4.tag()
        
        XCTAssertEqual(output.album, tag.album)
        XCTAssertEqual(output.iTunesAccountType, tag.iTunesAccountType)
        XCTAssertEqual(output.artist, tag.artist)
        XCTAssertEqual(output.artistID, tag.artistID)
        XCTAssertEqual(output.artistKeywords, tag.artistKeywords)
        XCTAssertEqual(output.artistSort, tag.artistSort)
        XCTAssertEqual(output.compilation, tag.compilation)
        XCTAssertEqual(output.contentRating?.rawValue, "au-movie|G|100|Notes")
        XCTAssertEqual(output["iTunEXTC"], "au-movie|G|100|Notes")
        XCTAssertEqual(output.languages, tag.languages)
        XCTAssertEqual(output.duration, tag.duration)
        XCTAssertEqual(output.releaseDate, tag.releaseDate)
        XCTAssertEqual(output.discNumber.index, tag.discNumber.index)
        XCTAssertEqual(output.trackNumber.index, tag.trackNumber.index)
        XCTAssertEqual(output.trackNumber.total, tag.trackNumber.total)
        XCTAssertEqual(output.chapterList[0].startTime, 0)
        XCTAssertEqual(output.chapterList[0].title, "Chapter 01")
        XCTAssertEqual(output.chapterList[1].startTime, 700)
        XCTAssertEqual(output.chapterList[1].title, "Chapter 02")
        XCTAssertEqual(output.chapterList[2].startTime, 1670)
        XCTAssertEqual(output.chapterList[2].title, "Chapter 03")
        XCTAssertEqual(output.chapterList[3].startTime, 3165)
        XCTAssertEqual(output.chapterList[3].title, "Chapter 04")
        XCTAssertEqual(output.chapterList[4].startTime, 3976)
        XCTAssertEqual(output.chapterList[4].title, "Chapter 05")
    }
    
    func testCoverArt() throws {
        let mp4 = try Mp4File(location: sampleNoMeta)
        var tag = try Tag(mp4File: mp4)
        
        XCTAssertNil(tag.coverArt)
        
        try tag.setCoverArt(location: sampleCover)
        XCTAssertNotNil(tag.coverArt)

        let outputUrl = tempOutputDirectory
//        let outputUrl = try localDirectory(fileName: "mp4-covertest", fileExtension: "m4a")
        XCTAssertNoThrow(try mp4.write(tag: tag, to: outputUrl))
        
        let output = try Tag(mp4File: try Mp4File(location: outputUrl))
        XCTAssertNotNil(output.coverArt)
    }
    
    func testMetadataExporter() throws {
        let url = localDirectory.appendingPathComponent("test-real/basilisk-test.m4b")
        let file = try XCTUnwrap(Mp4File(location: url))
        
        let exporter = MetadataExporter(mp4File: file,
                                        useAtomID: true)
        XCTAssertNoThrow(try print(exporter.exportMetadataText(savingAs: .text)))
    }
}
