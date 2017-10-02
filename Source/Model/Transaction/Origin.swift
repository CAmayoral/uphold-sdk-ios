import Foundation
import ObjectMapper

/// Origin model.
open class Origin: Mappable {

    /// The id of the account from the origin of the transaction.
    public private(set) final var accountId: String?

    /// The card id of the card from the origin of the transaction.
    public private(set) final var cardId: String?

    /// The type of the account from the origin of the transaction.
    public private(set) final var accountType: String?

    /// The amount from the origin of the transaction.
    public private(set) final var amount: String?

    /// The base from the origin of the transaction.
    public private(set) final var base: String?

    /// The commission from the origin of the transaction.
    public private(set) final var commission: String?

    /// The currency from the origin of the transaction.
    public private(set) final var currency: String?

    /// The description from the origin of the transaction.
    public private(set) final var description: String?

    /// The fee from the origin of the transaction.
    public private(set) final var fee: String?

    /// The merchant from the origin of the transaction.
    public private(set) final var merchant: Merchant?

    /// The rate from the origin of the transaction.
    public private(set) final var rate: String?

    /// The sources from the origin of the transaction.
    public private(set) final var sources: [Source]?

    /// The type from the origin of the transaction.
    public private(set) final var type: String?

    /// The username from the origin of the transaction.
    public private(set) final var username: String?

    /**
      Constructor.

      - parameter accountId: The id of the account from the origin of the transaction.
      - parameter cardId: The card id of the card from the origin of the transaction.
      - parameter accountType: The type of the account from the origin of the transaction.
      - parameter amount: The amount from the origin of the transaction.
      - parameter base: The base from the origin of the transaction.
      - parameter commission: The commission from the origin of the transaction.
      - parameter currency: The currency from the origin of the transaction.
      - parameter description: The description from the origin of the transaction.
      - parameter fee: The fee from the origin of the transaction.
      - parameter merchant: The merchant from the origin of the transaction.
      - parameter rate: The rate from the origin of the transaction.
      - parameter sources: The sources from the origin of the transaction.
      - parameter type: The type from the origin of the transaction.
      - parameter username: The username from the origin of the transaction.
    */
    public init(accountId: String, cardId: String, accountType: String, amount: String, base: String, commission: String, currency: String, description: String, fee: String, merchant: Merchant, rate: String, sources: [Source], type: String, username: String) {
        self.accountId = accountId
        self.cardId = cardId
        self.accountType = accountType
        self.amount = amount
        self.base = base
        self.commission = commission
        self.currency = currency
        self.description = description
        self.fee = fee
        self.merchant = merchant
        self.rate = rate
        self.sources = sources
        self.type = type
        self.username = username
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
        accountId <- map["AccountId"]
        cardId  <- map["CardId"]
        accountType  <- map["accountType"]
        amount <- map["amount"]
        base <- map["base"]
        commission <- map["commission"]
        currency <- map["currency"]
        description <- map["description"]
        fee <- map["fee"]
        merchant <- map["merchant"]
        rate <- map["rate"]
        sources <- map["sources"]
        type <- map["type"]
        username <- map["username"]
    }

}
