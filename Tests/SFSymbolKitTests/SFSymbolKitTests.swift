import XCTest
@testable import SFSymbolKit

final class SFSymbolKitTests: XCTestCase {
    func testName() throws {
        let name = Symbols.docTextImageFill.name
        XCTAssertEqual(name, "doc.text.image.fill")
    }
}
