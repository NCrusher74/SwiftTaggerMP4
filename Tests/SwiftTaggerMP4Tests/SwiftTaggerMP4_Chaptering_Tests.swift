import XCTest
import Cocoa
import CMP4v2

@testable import SwiftTaggerMP4

@available(OSX 10.13, *)
final class SwiftTaggerMP4_Chaptering_Tests: XCTestCase {
    func testReading() throws {
        let tag = tag(withMeta: true, chaptered: true)
    }
    
    func testWriting() throws {
    }
}
