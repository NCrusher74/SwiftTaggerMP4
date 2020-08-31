import XCTest
import Cocoa
@testable import SwiftTaggerMP4

final class SwiftTaggerMP4Tests: XCTestCase {

    func testPrint() throws {
        let data = try Data(contentsOf: sampleBookUrl)
        let range = 000000187861 ..< 000000187961
        let subdata = data.subdata(in: range)
        print(subdata.hexadecimal())
    }
    
    func testReadFile() throws {
        let source = try Mp4File(location: sampleBookUrl)
        XCTAssertTrue(!source.rootAtoms.isEmpty)
        XCTAssertNotNil(source.moov)
        XCTAssertTrue(!source.mdats.isEmpty)
        XCTAssertTrue(!source.moov.tracks.isEmpty)
        XCTAssertEqual(source.rootAtoms.count, 3)
        XCTAssertEqual(Mp4File.duration, 1055370)
        XCTAssertEqual(Mp4File.timeScale, 44100)
        XCTAssertNil(Mp4File.elstDuration)
    }
}
