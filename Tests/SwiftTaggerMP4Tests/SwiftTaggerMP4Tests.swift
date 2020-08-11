import XCTest
import Cocoa
import SwiftMp4MetadataParser
@testable import SwiftTaggerMP4

@available(OSX 10.13, *)
final class SwiftTaggerMP4Tests: XCTestCase {
//    func testStringAndStringArrayCreation() throws {
//        let source = try Mp4File(location: sampleNoMeta)
//        try source.set(.acknowledgment,
//                       stringValue: "Acknowledgment",
//                       customName: nil)
//        try source.set(.album,
//                       stringValue: "Album",
//                       customName: nil)
//        try source.set(.albumArtist,
//                       stringValue: "Album Artist",
//                       customName: nil)
//        try source.set(.albumArtistSort,
//                       stringValue: "Album Artist Sort",
//                       customName: nil)
//        try source.set(.albumSort,
//                       stringValue: "Album Sort",
//                       customName: nil)
//        try source.set(.arranger,
//                       stringValue: "Arranger",
//                       customName: nil)
//        try source.set(.arrangerKeywords,
//                       arrayValue: ["Arranger", "Keywords"])
//        try source.set(.artDirector,
//                       stringValue: "Art Director",
//                       customName: nil)
//        try source.set(.artist,
//                       stringValue: "Artist",
//                       customName: nil)
//        try source.set(.artistKeywords,
//                       arrayValue: ["Artist", "Keywords"])
//        try source.set(.artistSort,
//                       stringValue: "Artist Sort",
//                       customName: nil)
//        try source.set(.artistUrl,
//                       stringValue: "Artist Url",
//                       customName: nil)
//        try source.set(.category,
//                       stringValue: "Category",
//                       customName: nil)
//        try source.set(.comment,
//                       stringValue: "Comment",
//                       customName: nil)
//        try source.set(.composer,
//                       stringValue: "Composer",
//                       customName: nil)
//        try source.set(.composerKeywords,
//                       arrayValue: ["Composer", "Keywords"])
//        try source.set(.composerSort,
//                       stringValue: "Composer Sort",
//                       customName: nil)
//        try source.set(.conductor,
//                       stringValue: "Conductor",
//                       customName: nil)
//        try source.set(.copyright,
//                       stringValue: "Copyright",
//                       customName: nil)
//        try source.set(.copyrightStatement,
//                       stringValue: "Copyright Statement",
//                       customName: nil)
//        try source.set(.customGenre,
//                       stringValue: "Custom Genre",
//                       customName: nil)
//        try source.set(.description,
//                       stringValue: "Description",
//                       customName: nil)
//        try source.set(.editDateAndDescription1,
//                       stringValue: "Edit Date Description 1",
//                       customName: nil)
//        try source.set(.editDateAndDescription2,
//                       stringValue: "Edit Date Description 2",
//                       customName: nil)
//        try source.set(.editDateAndDescription3,
//                       stringValue: "Edit Date Description 3",
//                       customName: nil)
//        try source.set(.editDateAndDescription4,
//                       stringValue: "Edit Date Description 4",
//                       customName: nil)
//        try source.set(.editDateAndDescription5,
//                       stringValue: "Edit Date Description 5",
//                       customName: nil)
//        try source.set(.editDateAndDescription6,
//                       stringValue: "Edit Date Description 6",
//                       customName: nil)
//        try source.set(.editDateAndDescription7,
//                       stringValue: "Edit Date Description 7",
//                       customName: nil)
//        try source.set(.editDateAndDescription8,
//                       stringValue: "Edit Date Description 8",
//                       customName: nil)
//        try source.set(.editDateAndDescription9,
//                       stringValue: "Edit Date Description 9",
//                       customName: nil)
//        try source.set(.encodedBy,
//                       stringValue: "Encoded By",
//                       customName: nil)
//        try source.set(.encodingTool,
//                       stringValue: "Encoding Tool",
//                       customName: nil)
//        try source.set(.executiveProducer,
//                       stringValue: "Executive Producer",
//                       customName: nil)
//        try source.set(.filmMakerUrl,
//                       stringValue: "Filmmaker Url",
//                       customName: nil)
//        try source.set(.format,
//                       stringValue: "Format",
//                       customName: nil)
//        try source.set(.grouping,
//                       stringValue: "Grouping",
//                       customName: nil)
//        try source.set(.information,
//                       stringValue: "Information",
//                       customName: nil)
//        try source.set(.keywords,
//                       arrayValue: ["Key","Words"])
//        try source.set(.label,
//                       stringValue: "Label",
//                       customName: nil)
//        try source.set(.linerNotes,
//                       stringValue: "Liner Notes",
//                       customName: nil)
//        try source.set(.longDescription,
//                       stringValue: "Long Description",
//                       customName: nil)
//        try source.set(.lyricist,
//                       stringValue: "Lyricist",
//                       customName: nil)
//        try source.set(.lyrics,
//                       stringValue: "Lyrics",
//                       customName: nil)
//        try source.set(.movementName,
//                       stringValue: "Movement Name",
//                       customName: nil)
//        try source.set(.originalArtist,
//                       stringValue: "Original Artist",
//                       customName: nil)
//        try source.set(.owner,
//                       stringValue: "Owner",
//                       customName: nil)
//        try source.set(.performers,
//                       stringValue: "Performers",
//                       customName: nil)
//        try source.set(.predefinedGenre,
//                       stringValue: "Predefined Genre",
//                       customName: nil)
//        try source.set(.producer,
//                       stringValue: "Producer",
//                       customName: nil)
//        try source.set(.producerKeywords,
//                       arrayValue: ["Producer", "Keywords"])
//        try source.set(.publisher,
//                       stringValue: "Publisher",
//                       customName: nil)
//        try source.set(.publisherUrl,
//                       stringValue: "Publisher Url",
//                       customName: nil)
//        try source.set(.purchaseUrl,
//                       stringValue: "Purchase Url",
//                       customName: nil)
//        try source.set(.recordCompany,
//                       stringValue: "Record Company",
//                       customName: nil)
//        try source.set(.recordingCopyright,
//                       stringValue: "Recording Copyright",
//                       customName: nil)
//        try source.set(.requirements,
//                       stringValue: "Requirements",
//                       customName: nil)
//        try source.set(.sellerID,
//                       stringValue: "Seller",
//                       customName: nil)
//        try source.set(.softwareVersion,
//                       stringValue: "Software Version",
//                       customName: nil)
//        try source.set(.soloist,
//                       stringValue: "Soloist",
//                       customName: nil)
//        try source.set(.songDescription,
//                       stringValue: "Song Description",
//                       customName: nil)
//        try source.set(.songwriterKeywords,
//                       arrayValue: ["Songwriter", "Keywords"])
//        try source.set(.soundEngineer,
//                       stringValue: "Sound Engineer",
//                       customName: nil)
//        try source.set(.sourceCredit,
//                       stringValue: "Source Credit",
//                       customName: nil)
//        try source.set(.subtitle,
//                       stringValue: "Subtitle",
//                       customName: nil)
//        try source.set(.subtitleKeywords,
//                       arrayValue: ["Subtitle", "Keywords"])
//        try source.set(.thanks,
//                       stringValue: "Thanks",
//                       customName: nil)
//        try source.set(.title,
//                       stringValue: "Title",
//                       customName: nil)
//        try source.set(.titleKeywords,
//                       arrayValue: ["Title", "Keywords"])
//        try source.set(.titleSort,
//                       stringValue: "Title Sort",
//                       customName: nil)
//        try source.set(.trackSubtitle,
//                       stringValue: "Track Subtitle",
//                       customName: nil)
//        try source.set(.tvEpisodeTitle,
//                       stringValue: "TV Episode Title",
//                       customName: nil)
//        try source.set(.tvNetwork,
//                       stringValue: "TV Network",
//                       customName: nil)
//        try source.set(.tvShow,
//                       stringValue: "TV Show",
//                       customName: nil)
//        try source.set(.tvShowDescription,
//                       stringValue: "TV Show Description",
//                       customName: nil)
//        try source.set(.tvShowSort,
//                       stringValue: "TV Show Sort",
//                       customName: nil)
//        try source.set(.website,
//                       stringValue: "Website",
//                       customName: nil)
//        try source.set(.workName,
//                       stringValue: "Work",
//                       customName: nil)
//        try source.set(.writer,
//                       stringValue: "Writer",
//                       customName: nil)
//        try source.set(.unknown,
//                       stringValue: "Unknown",
//                       customName: "UNKNOWN")
//        
//        let outputUrl = try tempDirectory().appendingPathComponent("test.m4a")
//        try source.write(outputLocation: outputUrl)
//        
//        let output = try Mp4File(location: outputUrl)
//        XCTAssertEqual(try output.get(.acknowledgment), "Acknowledgment")
//        XCTAssertEqual(try output.get(.album), "Album")
//        XCTAssertEqual(try output.get(.albumArtist), "Album Artist")
//        XCTAssertEqual(try output.get(.albumArtistSort), "Album Artist Sort")
//        XCTAssertEqual(try output.get(.albumSort), "Album Sort")
//        XCTAssertEqual(try output.get(.arranger), "Arranger")
//        XCTAssertEqual(try output.get(.arrangerKeywords), ["Arranger", "Keywords"])
//        XCTAssertEqual(try output.get(.artDirector), "Art Director")
//        XCTAssertEqual(try output.get(.artist), "Artist")
//        XCTAssertEqual(try output.get(.artistKeywords), ["Artist", "Keywords"])
//        XCTAssertEqual(try output.get(.artistSort), "Artist Sort")
//        XCTAssertEqual(try output.get(.artistUrl), "Artist Url")
//        XCTAssertEqual(try output.get(.category), "Category")
//        XCTAssertEqual(try output.get(.comment), "Comment")
//        XCTAssertEqual(try output.get(.composer), "Composer")
//        XCTAssertEqual(try output.get(.composerKeywords), ["Composer", "Keywords"])
//        XCTAssertEqual(try output.get(.composerSort), "Composer Sort")
//        XCTAssertEqual(try output.get(.conductor), "Conductor")
//        XCTAssertEqual(try output.get(.copyright), "Copyright")
//        XCTAssertEqual(try output.get(.copyrightStatement), "Copyright Statement")
//        XCTAssertEqual(try output.get(.customGenre), "Custom Genre")
//        XCTAssertEqual(try output.get(.description), "Description")
//        XCTAssertEqual(try output.get(.editDateAndDescription1), "Edit Date Description 1")
//        XCTAssertEqual(try output.get(.editDateAndDescription2), "Edit Date Description 2")
//        XCTAssertEqual(try output.get(.editDateAndDescription3), "Edit Date Description 3")
//        XCTAssertEqual(try output.get(.editDateAndDescription4), "Edit Date Description 4")
//        XCTAssertEqual(try output.get(.editDateAndDescription5), "Edit Date Description 5")
//        XCTAssertEqual(try output.get(.editDateAndDescription6), "Edit Date Description 6")
//        XCTAssertEqual(try output.get(.editDateAndDescription7), "Edit Date Description 7")
//        XCTAssertEqual(try output.get(.editDateAndDescription8), "Edit Date Description 8")
//        XCTAssertEqual(try output.get(.editDateAndDescription9), "Edit Date Description 9")
//        XCTAssertEqual(try output.get(.encodedBy), "Encoded By")
//        XCTAssertEqual(try output.get(.encodingTool), "Encoding Tool")
//        XCTAssertEqual(try output.get(.executiveProducer), "Executive Producer")
//        XCTAssertEqual(try output.get(.filmMakerUrl), "Filmmaker Url")
//        XCTAssertEqual(try output.get(.format), "Format")
//        XCTAssertEqual(try output.get(.grouping), "Grouping")
//        XCTAssertEqual(try output.get(.information), "Information")
//        XCTAssertEqual(try output.get(.keywords), ["Key","Words"])
//        XCTAssertEqual(try output.get(.label), "Label")
//        XCTAssertEqual(try output.get(.linerNotes), "Liner Notes")
//        XCTAssertEqual(try output.get(.longDescription), "Long Description")
//        XCTAssertEqual(try output.get(.lyricist), "Lyricist")
//        XCTAssertEqual(try output.get(.lyrics), "Lyrics")
//        XCTAssertEqual(try output.get(.movementName), "Movement Name")
//        XCTAssertEqual(try output.get(.originalArtist), "Original Artist")
//        XCTAssertEqual(try output.get(.owner), "Owner")
//        XCTAssertEqual(try output.get(.performers), "Performers")
//        XCTAssertEqual(try output.get(.predefinedGenre), "Predefined Genre")
//        XCTAssertEqual(try output.get(.producer), "Producer")
//        XCTAssertEqual(try output.get(.producerKeywords), ["Producer", "Keywords"])
//        XCTAssertEqual(try output.get(.publisher), "Publisher")
//        XCTAssertEqual(try output.get(.publisherUrl), "Publisher Url")
//        XCTAssertEqual(try output.get(.purchaseUrl), "Purchase Url")
//        XCTAssertEqual(try output.get(.recordCompany), "Record Company")
//        XCTAssertEqual(try output.get(.recordingCopyright), "Recording Copyright")
//        XCTAssertEqual(try output.get(.requirements), "Requirements")
//        XCTAssertEqual(try output.get(.sellerID), "Seller")
//        XCTAssertEqual(try output.get(.softwareVersion), "Software Version")
//        XCTAssertEqual(try output.get(.soloist), "Soloist")
//        XCTAssertEqual(try output.get(.songDescription), "Song Description")
//        XCTAssertEqual(try output.get(.songwriterKeywords), ["Songwriter", "Keywords"])
//        XCTAssertEqual(try output.get(.soundEngineer), "Sound Engineer")
//        XCTAssertEqual(try output.get(.sourceCredit), "Source Credit")
//        XCTAssertEqual(try output.get(.subtitle), "Subtitle")
//        XCTAssertEqual(try output.get(.subtitleKeywords), ["Subtitle", "Keywords"])
//        XCTAssertEqual(try output.get(.thanks), "Thanks")
//        XCTAssertEqual(try output.get(.title), "Title")
//        XCTAssertEqual(try output.get(.titleKeywords), ["Title", "Keywords"])
//        XCTAssertEqual(try output.get(.titleSort), "Title Sort")
//        XCTAssertEqual(try output.get(.trackSubtitle), "Track Subtitle")
//        XCTAssertEqual(try output.get(.tvEpisodeTitle), "TV Episode Title")
//        XCTAssertEqual(try output.get(.tvNetwork), "TV Network")
//        XCTAssertEqual(try output.get(.tvShow), "TV Show")
//        XCTAssertEqual(try output.get(.tvShowDescription), "TV Show Description")
//        XCTAssertEqual(try output.get(.tvShowSort), "TV Show Sort")
//        XCTAssertEqual(try output.get(.website), "Website")
//        XCTAssertEqual(try output.get(.workName), "Work")
//        XCTAssertEqual(try output.get(.writer), "Writer")
//        XCTAssertEqual(try output.get(customStringMetadata: "UNKNOWN"), "Unknown")
//    }
//
}
