import XCTest
@testable import Qif

class QifTests: XCTestCase {
    func testInitializeWithFile() {
        let fakeStreamReader = FakeStreamReader()
        
        _ = Qif(fromFile : "file.qif", streamReader : fakeStreamReader)
        
        XCTAssertTrue(fakeStreamReader.openWasCalled())
    }
}
