import Foundation
import ObjectMapper

/// Login otp settings model.
open class Login: Mappable {

    /// A boolean indicating if the otp is enable for the login process.
    public private(set) final var enabled: Bool?

    /**
      Constructor.

     - parameter enabled: A boolean indicating if the otp is enable for the login process.
    */
    public init(enabled: Bool) {
        self.enabled = enabled
    }

    // MARK: Required by the ObjectMapper.

    /**
      Constructor.

      - parameter map: Mapping data object.
    */
    required public init?(map: Map) {
    }

    /**
      Maps the JSON to the Object.

      - parameter map: The object to map.
    */
    open func mapping(map: Map) {
        self.enabled <- map["enabled"]
    }

}
