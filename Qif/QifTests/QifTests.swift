import XCTest
@testable import Qif

class QifTests: XCTestCase {
    var fakeStreamReader : FakeStreamReader?
    var qif : Qif?

    override func setUp() {
        fakeStreamReader = FakeStreamReader()

        qif = Qif(fromFile : "file.qif", streamReader : fakeStreamReader!)
    }

    func testInitializeWithFile() {
        XCTAssertTrue(fakeStreamReader!.openWasCalled())
    }

    func testNextUpToEOF() {
        fakeStreamReader!.linesPerRecord = 3
        fakeStreamReader!.numberOfRecords = 6

        while(qif!.next() != nil) {

        }

        XCTAssertEqual(fakeStreamReader!.nextLineCounter, 3 * 6 + 1)
    }
}
