/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Solana
import Beet
import BeetSolana


/**
* Arguments used to create {@link Bidreceipt}
* @category Accounts
* @category generated
*/
public protocol BidreceiptArgs {
    var bidReceiptDiscriminator: [UInt8] { get }
     var tradeState: PublicKey { get }
     var bookkeeper: PublicKey { get }
     var auctionHouse: PublicKey { get }
     var buyer: PublicKey { get }
     var metadata: PublicKey { get }
     var tokenAccount: COption<PublicKey> { get }
     var purchaseReceipt: COption<PublicKey> { get }
     var price: UInt64 { get }
     var tokenSize: UInt64 { get }
     var bump: UInt8 { get }
     var tradeStateBump: UInt8 { get }
     var createdAt: Int64 { get }
     var canceledAt: COption<Int64> { get }
}

/**
 * Holds the data for the {@link Bidreceipt} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Bidreceipt: BidreceiptArgs {
  public static let bidReceiptDiscriminator = [97, 99, 99, 111, 117, 110, 116, 58] as [UInt8]

  public let bidReceiptDiscriminator: [UInt8]
  public let tradeState: PublicKey
  public let bookkeeper: PublicKey
  public let auctionHouse: PublicKey
  public let buyer: PublicKey
  public let metadata: PublicKey
  public let tokenAccount: COption<PublicKey>
  public let purchaseReceipt: COption<PublicKey>
  public let price: UInt64
  public let tokenSize: UInt64
  public let bump: UInt8
  public let tradeStateBump: UInt8
  public let createdAt: Int64
  public let canceledAt: COption<Int64>

  /**
   * Creates a {@link Bidreceipt} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Bidreceipt {
    return Bidreceipt(
        bidReceiptDiscriminator: args["accountDiscriminator"] as! [UInt8],
        tradeState: args["tradeState"] as! PublicKey,
        bookkeeper: args["bookkeeper"] as! PublicKey,
        auctionHouse: args["auctionHouse"] as! PublicKey,
        buyer: args["buyer"] as! PublicKey,
        metadata: args["metadata"] as! PublicKey,
        tokenAccount: args["tokenAccount"] as! COption<PublicKey>,
        purchaseReceipt: args["purchaseReceipt"] as! COption<PublicKey>,
        price: args["price"] as! UInt64,
        tokenSize: args["tokenSize"] as! UInt64,
        bump: args["bump"] as! UInt8,
        tradeStateBump: args["tradeStateBump"] as! UInt8,
        createdAt: args["createdAt"] as! Int64,
        canceledAt: args["canceledAt"] as! COption<Int64>
    )
  }
  /**
   * Deserializes the {@link Bidreceipt} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Bidreceipt, Int )  {
    return Bidreceipt.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Bidreceipt} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Bidreceipt, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Bidreceipt.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Bidreceipt} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Bidreceipt, Int ) {
    return bidReceiptBeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Bidreceipt} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return bidReceiptBeet.serialize(instance: [
        "bidReceiptDiscriminator" : self.bidReceiptDiscriminator,
        "tradeState" : self.tradeState,
        "bookkeeper" : self.bookkeeper,
        "auctionHouse" : self.auctionHouse,
        "buyer" : self.buyer,
        "metadata" : self.metadata,
        "tokenAccount" : self.tokenAccount,
        "purchaseReceipt" : self.purchaseReceipt,
        "price" : self.price,
        "tokenSize" : self.tokenSize,
        "bump" : self.bump,
        "tradeStateBump" : self.tradeStateBump,
        "createdAt" : self.createdAt,
        "canceledAt" : self.canceledAt
        ])
  }
  /**
* Returns the byteSize of a {@link Buffer} holding the serialized data of
* {@link Bidreceipt} for the provided args.
*
* @param args need to be provided since the byte size for this account
* depends on them
*/
static func byteSize(args: BidreceiptArgs) -> UInt64 {
    return UInt64(bidReceiptBeet.toFixedFromValue(val: args).byteSize)
}
/**
* Fetches the minimum balance needed to exempt an account holding
* {@link Bidreceipt} data from rent
*
* @param args need to be provided since the byte size for this account
* depends on them
* @param connection used to retrieve the rent exemption information
*/
static func getMinimumBalanceForRentExemption(
    args: BidreceiptArgs,
    connection: Api,
    commitment: Commitment?,
    onComplete: @escaping(Result<UInt64, Error>) -> Void
) {
    return connection.getMinimumBalanceForRentExemption(dataLength: Bidreceipt.byteSize(args: args), commitment: commitment, onComplete: onComplete)
}
}
  /**
   * @category Accounts
   * @category generated
   */
  public let bidReceiptBeet = FixableBeetStruct<Bidreceipt>(
    fields:[
        ("accountDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("tradeState", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("bookkeeper", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("auctionHouse", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("buyer", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("metadata", Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))),
        ("tokenAccount", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
        ("purchaseReceipt", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(BeetPublicKey())))))),
        ("price", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("tokenSize", Beet.fixedBeet(.init(value: .scalar(u64())))),
        ("bump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("tradeStateBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("createdAt", Beet.fixedBeet(.init(value: .scalar(i64())))),
        ("canceledAt", Beet.fixableBeat(coption(inner: Beet.fixedBeet(.init(value: .scalar(i64()))))))
    ],
    construct: Bidreceipt.fromArgs,
    description: "Bidreceipt"
)
