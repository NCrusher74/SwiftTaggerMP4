//import XCTest
//import Cocoa
//import SwiftLanguageAndLocaleCodes
//@testable import SwiftTaggerMP4
//
//final class SwiftTaggerMP4Tests_Misc: XCTestCase {
//    
//        func testPrint() throws {
//    
//            let path = "/Users/nolainecrusher/Desktop/TestOutput/sampleMp4.m4a"
//            let url = URL(fileURLWithPath: path)
//            let data = try Data(contentsOf: url)
//    //        let data = try Data(contentsOf: sampleBookCVUrl)
//            let range = 240 ..< 260
//            let subdata = data.subdata(in: range)
//            print(subdata.hexadecimal())
//    
//            /*
//             0 0 0 14
//             74 72 65 66
//             0 0 0 c
//             63 68 61 70
//             0 0 0 2
//             */
//        }
//    
//    @available(OSX 10.13, *)
//    func testTag() throws {
//        let mp4 = try Mp4File(location: sampleNoMeta)
//        var tag = try Tag(mp4File: mp4)
//        tag.removeAllMetadata()
//        XCTAssertTrue(tag.metadataAtoms.isEmpty)
//        
//        let calendar = Calendar(identifier: .iso8601)
//        let dateComponents = DateComponents(calendar: calendar, timeZone: TimeZone(secondsFromGMT: 0) ?? .current, year: 2020, month: 09, day: 01)
//        let date = calendar.date(from: dateComponents)
//        
//        tag.removeAllChapters()
//        XCTAssertTrue(tag.listChapters().isEmpty)
//        
//        tag.acknowledgment = "Acknowledgment"
//        tag.album = "Album"
//        tag.albumArtist = "Album Artist"
//        tag.albumArtistSort = "Album Artist Sort"
//        tag.albumSort = "Album Sort"
//        tag.appleStoreCountryID = 23456
//        tag.arranger = "Arranger"
//        tag.arrangerKeywords = ["Arranger", "Keywords"]
//        tag.artDirector = "Art Director"
//        tag.artist = "Artist"
//        tag.artistID = 34567
//        tag.artistKeywords = ["Artist", "Keywords"]
//        tag.artistSort = "Artist Sort"
//        tag.artistUrl = "www.artist.url"
//        tag.bpm = 99
//        tag.category = "Category"
//        tag.comment = "Comment"
//        tag.compilation = true
//        tag.composer = "Composer"
//        tag.composerKeywords = ["Composer", "Keywords"]
//        tag.composerSort = "Composer Sort"
//        tag.conductor = "Conductor"
//        tag.conductorID = 45678
//        tag.copyright = "2020 Copyright"
//        tag.copyrightStatement = "Copyright Statement"
//        tag.customGenre = "Genre"
//        tag.description = "Description"
//        tag.director = "Director"
//        tag.discNumber.disc = 1
//        tag.discNumber.totalDiscs = 2
//        tag.encodedBy = "Encoded By"
//        tag.encodingTool = "Encoding Tool"
//        tag.executiveProducer = "Executive Producer"
//        tag.labelUrl = "www.filmmaker.url"
//        tag.format = "Format"
//        tag.gaplessPlayback = true
//        tag.genreID = .audiobooks
//        tag.grouping = "Grouping"
//        tag.information = "Information"
//        tag.isrc = "123456789012"
//        tag.iTunesAccount = "iTunes Account"
//        tag.iTunesAccountType = 123
//        tag.keywords = ["Key", "Words"]
//        tag.label = "Label"
//        tag.linerNotes = "Liner Notes"
//        tag.longDescription = "Long Description"
//        tag.lyricist = "Lyricist"
//        tag.lyrics = "Lyrics"
//        tag.mediaKind = .audiobook
//        tag.movementCount = 4
//        tag.movementNumber = 3
//        tag.movement = "Movement Name"
//        tag.narrator = "Narrator"
//        tag.originalArtist = "Original Artist"
//        tag.owner = "Owner"
//        tag.performers = ["Performer"]
//        tag.playlistID = 56789
//        tag.podcast = true
//        tag.podcastID = "Podcast ID"
//        tag.podcastFeed = "www.podcast.url"
//        tag.predefinedGenre = .audiobooks
//        tag.producer = "Producer"
//        tag.producerKeywords = ["Producer", "Keywords"]
//        tag.publisher = "Publisher"
//        tag.recordCompanyUrl = "www.publisher.url"
//        tag.purchaseDate = date
//        tag.rating = .clean
//        tag.recordCompany = "Record Company"
//        tag.recordingCopyright = "Recording Copyright"
//        tag.recordingDate = date
//        tag.releaseDate = date
//        tag.requirements = "Requirements"
//        tag.sellerID = "Seller ID"
//        tag.showWorkAndMovement = true
//        tag.softwareVersion = "Software Version"
//        tag.soloist = "Soloist"
//        tag.songDescription = "Song Description"
//        tag.songwriterKeywords = ["Songwriter", "Keywords"]
//        tag.songwriter = "Songwriter"
//        tag.soundEngineer = "Song Engineer"
//        tag.sourceCredit = "Source Credit"
//        tag.subtitle = "Subtitle"
//        tag.subtitleKeywords = ["Subtitle", "Keywords"]
//        tag.thanks = "Thanks"
//        tag.title = "Title"
//        tag.titleKeywords = ["Title", "Keywords"]
//        tag.titleSort = "Title Sort"
//        tag.trackNumber.track = 5
//        tag.trackNumber.totalTracks = 6
//        tag.trackSubtitle = "Track Subtitle"
//        tag.tvEpisodeNumber = 7
//        tag.tvSeason = 8
//        tag.tvShow = "TV Show"
//        tag.tvNetwork = "TV Network"
//        tag.tvShowSort = "TV Show Sort"
//        tag.tvEpisodeTitle = "TV Episode Title"
//        tag.tvShowDescription = "TV Show Description"
//        tag.website = "www.website.url"
//        tag.workName = "Work Name"
//        tag.writer = "Writer"
//        tag.year = 2020
//        tag["Unknown"] = "unknown"
//        try tag.setCoverArt(location: sampleCover)
//        
//        tag.addChapter(startTime: 0, title: "Chapter 1")
//        tag.addChapter(startTime: 600, title: "Chapter 2")
//        tag.addChapter(startTime: 1300, title: "Chapter 3")
//        tag.addChapter(startTime: 2100, title: "Chapter 4")
//        tag.addChapter(startTime: 3300, title: "Chapter 5")
//        tag.addChapter(startTime: 4600, title: "Chapter 6")
//
//        let outputUrl = try localOutputDirectory("sampleMp4")
////        let outputUrl = tempOutputDirectory
//        try mp4.write(tag: tag, to: outputUrl)
//        
//        let outputMp4 = try Mp4File(location: outputUrl)
//        let output = try Tag(mp4File: outputMp4)
//        
//        let knownTitles = ["Chapter 1",
//                           "Chapter 2",
//                           "Chapter 3",
//                           "Chapter 4",
//                           "Chapter 5",
//                           "Chapter 6"]
//        let knownStarts = [0, 600, 1300, 2100, 3300, 4600]
//        
//        XCTAssertEqual(output.acknowledgment,"Acknowledgment")
//        XCTAssertEqual(output.album,"Album")
//        XCTAssertEqual(output.albumArtist,"Album Artist")
//        XCTAssertEqual(output.albumArtistSort,"Album Artist Sort")
//        XCTAssertEqual(output.albumSort,"Album Sort")
//        XCTAssertEqual(output.appleStoreCountryID,23456)
//        XCTAssertEqual(output.arranger,"Arranger")
//        XCTAssertEqual(output.arrangerKeywords,["Arranger", "Keywords"])
//        XCTAssertEqual(output.artDirector,"Art Director")
//        XCTAssertEqual(output.artist,"Artist")
//        XCTAssertEqual(output.artistID,34567)
//        XCTAssertEqual(output.artistKeywords,["Artist", "Keywords"])
//        XCTAssertEqual(output.artistSort,"Artist Sort")
//        XCTAssertEqual(output.artistUrl,"www.artist.url")
//        XCTAssertEqual(output.bpm,99)
//        XCTAssertEqual(output.category,"Category")
//        XCTAssertEqual(output.comment,"Comment")
//        XCTAssertEqual(output.compilation,true)
//        XCTAssertEqual(output.composer,"Composer")
//        XCTAssertEqual(output.composerKeywords,["Composer", "Keywords"])
//        XCTAssertEqual(output.composerSort,"Composer Sort")
//        XCTAssertEqual(output.conductor,"Conductor")
//        XCTAssertEqual(output.conductorID,45678)
//        XCTAssertEqual(output.copyright,"2020 Copyright")
//        XCTAssertEqual(output.copyrightStatement,"Copyright Statement")
//        XCTAssertEqual(output.customGenre,"Genre")
//        XCTAssertEqual(output.description,"Description")
//        XCTAssertEqual(output.director,"Director")
//        XCTAssertEqual(output.discNumber.disc,1)
//        XCTAssertEqual(output.discNumber.totalDiscs,2)
//        XCTAssertEqual(output.encodedBy,"Encoded By")
//        XCTAssertEqual(output.encodingTool,"Encoding Tool")
//        XCTAssertEqual(output.executiveProducer,"Executive Producer")
//        XCTAssertEqual(output.labelUrl,"www.filmmaker.url")
//        XCTAssertEqual(output.format,"Format")
//        XCTAssertEqual(output.gaplessPlayback,true)
//        XCTAssertEqual(output.genreID,.audiobooks)
//        XCTAssertEqual(output.grouping,"Grouping")
//        XCTAssertEqual(output.information,"Information")
//        XCTAssertEqual(output.isrc,"123456789012")
//        XCTAssertEqual(output.iTunesAccount, "iTunes Account")
//        XCTAssertEqual(output.iTunesAccountType,123)
//        XCTAssertEqual(output.keywords,["Key", "Words"])
//        XCTAssertEqual(output.label,"Label")
//        XCTAssertEqual(output.linerNotes,"Liner Notes")
//        XCTAssertEqual(output.longDescription,"Long Description")
//        XCTAssertEqual(output.lyricist,"Lyricist")
//        XCTAssertEqual(output.lyrics,"Lyrics")
//        XCTAssertEqual(output.mediaKind,.audiobook)
//        XCTAssertEqual(output.movementCount,4)
//        XCTAssertEqual(output.movementNumber,3)
//        XCTAssertEqual(output.movement,"Movement Name")
//        XCTAssertEqual(output.narrator,"Narrator")
//        XCTAssertEqual(output.originalArtist,"Original Artist")
//        XCTAssertEqual(output.owner,"Owner")
//        XCTAssertEqual(output.performers,["Performer"])
//        XCTAssertEqual(output.playlistID,56789)
//        XCTAssertEqual(output.podcast,true)
//        XCTAssertEqual(output.podcastID,"Podcast ID")
//        XCTAssertEqual(output.podcastFeed,"www.podcast.url")
//        XCTAssertEqual(output.predefinedGenre,.audiobooks)
//        XCTAssertEqual(output.producer,"Producer")
//        XCTAssertEqual(output.producerKeywords,["Producer", "Keywords"])
//        XCTAssertEqual(output.publisher,"Publisher")
//        XCTAssertEqual(output.recordCompanyUrl,"www.publisher.url")
//        XCTAssertEqual(output.purchaseDate, date)
//        XCTAssertEqual(output.rating,.clean)
//        XCTAssertEqual(output.recordCompany,"Record Company")
//        XCTAssertEqual(output.recordingCopyright,"Recording Copyright")
//        XCTAssertEqual(output.recordingDate, date)
//        XCTAssertEqual(output.releaseDate, date)
//        XCTAssertEqual(output.requirements,"Requirements")
//        XCTAssertEqual(output.sellerID,"Seller ID")
//        XCTAssertEqual(output.showWorkAndMovement,true)
//        XCTAssertEqual(output.softwareVersion,"Software Version")
//        XCTAssertEqual(output.soloist,"Soloist")
//        XCTAssertEqual(output.songDescription,"Song Description")
//        XCTAssertEqual(output.songwriterKeywords,["Songwriter", "Keywords"])
//        XCTAssertEqual(output.songwriter,"Songwriter")
//        XCTAssertEqual(output.soundEngineer,"Song Engineer")
//        XCTAssertEqual(output.sourceCredit,"Source Credit")
//        XCTAssertEqual(output.subtitle,"Subtitle")
//        XCTAssertEqual(output.subtitleKeywords,["Subtitle", "Keywords"])
//        XCTAssertEqual(output.thanks,"Thanks")
//        XCTAssertEqual(output.title,"Title")
//        XCTAssertEqual(output.titleKeywords,["Title", "Keywords"])
//        XCTAssertEqual(output.titleSort,"Title Sort")
//        XCTAssertEqual(output.trackNumber.track,5)
//        XCTAssertEqual(output.trackNumber.totalTracks,6)
//        XCTAssertEqual(output.trackSubtitle,"Track Subtitle")
//        XCTAssertEqual(output.tvEpisodeNumber,7)
//        XCTAssertEqual(output.tvSeason,8)
//        XCTAssertEqual(output.tvShow,"TV Show")
//        XCTAssertEqual(output.tvNetwork,"TV Network")
//        XCTAssertEqual(output.tvShowSort,"TV Show Sort")
//        XCTAssertEqual(output.tvEpisodeTitle,"TV Episode Title")
//        XCTAssertEqual(output.tvShowDescription,"TV Show Description")
//        XCTAssertEqual(output.website,"www.website.url")
//        XCTAssertEqual(output.workName,"Work Name")
//        XCTAssertEqual(output.writer,"Writer")
//        XCTAssertEqual(output.year,2020)
//        XCTAssertEqual(output.chapterHandler.chapterTitles, knownTitles)
//        XCTAssertEqual(output.chapterHandler.chapterStarts, knownStarts)
//        XCTAssertNotNil(output.coverArt)
//        XCTAssertEqual(output["Unknown"], "unknown")
//    }
//}
