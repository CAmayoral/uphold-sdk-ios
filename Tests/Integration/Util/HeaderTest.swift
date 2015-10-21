import XCTest
import SwiftClient
import UpholdSdk

/// Header integration tests.
class HeaderTest: XCTestCase {

    func testGetDefaultHeadersShouldReturnHeaders() {
        let headers: [String: String] = Header.getDefaultHeaders()

        XCTAssertEqual(headers["User-Agent"], String(format: "uphold-ios-sdk/%@ (%@)", GlobalConfigurations.UPHOLD_SDK_VERSION, GlobalConfigurations.SDK_GITHUB_URL), "Failed: Wrong header")
    }

    func testGetRateLimitValueShouldReturnRateLimit() {
        XCTAssertEqual(Header.getRateLimitValue(["x-ratelimit-limit": "300"]), "300", "Failed: Wrong value")
        XCTAssertNotEqual(Header.getRateLimitValue(["foobar": "300"]), "300", "Failed: Wrong value")
    }

    func testGetSecondsUntilRateLimitResetShouldReturnResetTime() {
        XCTAssertEqual(Header.getSecondsUntilRateLimitReset(["retry-after": "10"]), "10", "Failed: Wrong value")
        XCTAssertNotEqual(Header.getSecondsUntilRateLimitReset(["foobar": "10"]), "10", "Failed: Wrong value")
    }
}
