import XCTest
@testable import SwiftTaggerMP4

final class SwiftTaggerMP4Tests: XCTestCase {
    @available(OSX 10.12, *)
    func testReading() throws {
        let reading = try tag(withMeta: true)
        
        XCTAssertEqual(reading.acknowledgment, "Acknowledgment")
        XCTAssertEqual(reading.album, "Album")
        XCTAssertEqual(reading.albumArtist, "AlbumArtist")
    }
    
    @available(OSX 10.12, *)
    func testWriting() throws {
        var writing = try tag(withMeta: false)
        
        writing.acknowledgment = "ACKNOWLEDGMENT"
        writing.album = "ALBUM"
        writing.albumArtist = "ALBUMARTIST"
        
        let output = try localDirectory(fileName: "tesfile", fileExtension: "m4a")
        let file = try mp4File(withMeta: false)
        try file.write(to: output, writingTag: writing)
        
        let testFile = try Mp4File(location: output)
        let testing = Tag(from: testFile)
        
        XCTAssertEqual(testing.acknowledgment, "ACKNOWLEDGMENT")
        XCTAssertEqual(testing.album, "ALBUM")
        XCTAssertEqual(testing.albumArtist, "ALBUMARTIST")
    }
}
