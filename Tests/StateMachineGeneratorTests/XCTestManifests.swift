import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(StateMachineGeneratorTests.allTests),
    ]
}
#endif
