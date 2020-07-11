import XCTest
@testable import GdkPixbuf

class GdkPixbufTests: XCTestCase {

    /// test simple pixel buffer properties
    func testPixbuf() {
        let w: CInt = 320
        let h: CInt = 240
        let b: CInt = 8
        let pixbuf = Pixbuf(colorspace: .rgb, hasAlpha: false, bitsPerSample: b, width: w, height: h)
        XCTAssert(pixbuf.colorspace == .rgb)
        XCTAssertFalse(pixbuf.hasAlpha)
        XCTAssertEqual(pixbuf.bitsPerSample, Int(b))
        XCTAssertEqual(pixbuf.width, Int(w))
        XCTAssertEqual(pixbuf.height, Int(h))
        XCTAssertEqual(pixbuf.byteLength, Int(w*h*3))
        XCTAssertEqual(pixbuf.rowstride, Int(w*3))
    }

}
extension GdkPixbufTests {
    static var allTests : [(String, (GdkPixbufTests) -> () throws -> Void)] {
        return [
            ("testPixbuf", testPixbuf),
        ]
    }
}
