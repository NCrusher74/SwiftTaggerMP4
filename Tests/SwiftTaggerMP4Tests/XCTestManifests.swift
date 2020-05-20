import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftTaggerMP4Tests.allTests),
    ]
}
#endif
