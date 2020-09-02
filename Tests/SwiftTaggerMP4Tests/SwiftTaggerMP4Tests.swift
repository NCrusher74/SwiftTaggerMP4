import XCTest
import Cocoa
@testable import SwiftTaggerMP4

final class SwiftTaggerMP4Tests: XCTestCase {

    func testPrint() throws {
        let data = try Data(contentsOf: sampleBookUrl)
        let range = 000000186784 ..< 000000186804
        let subdata = data.subdata(in: range)
        print(subdata.hexadecimal())
    }
    
    /*
     */
    
    func testReadFile() throws {
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
}
