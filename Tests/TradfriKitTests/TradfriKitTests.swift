import XCTest
@testable import TradfriKit

final class TradfriKitTests: XCTestCase {
    func testExample() {
        let kit = TradfriKit()
        kit.runCode()
        wait(for: [expectation(description: "")], timeout: 60)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
