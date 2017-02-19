import XCTest
@testable import Qif

class QifTests: XCTestCase {
    func testExample() {
        let qif = Qif()
        qif.setB(value: true)
        XCTAssertTrue(qif.getB())
    }
}
