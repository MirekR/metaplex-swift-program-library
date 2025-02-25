/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import BeetSolana
import Solana
import Beet


/**
* Arguments used to create {@link Auctionhouse}
* @category Accounts
* @category generated
*/
public protocol AuctionhouseArgs {
    var auctionHouseDiscriminator: [UInt8] { get }
     var auctionHouseFeeAccount: PublicKey { get }
     var auctionHouseTreasury: PublicKey { get }
     var treasuryWithdrawalDestination: PublicKey { get }
     var feeWithdrawalDestination: PublicKey { get }
     var treasuryMint: PublicKey { get }
     var authority: PublicKey { get }
     var creator: PublicKey { get }
     var bump: UInt8 { get }
     var treasuryBump: UInt8 { get }
     var feePayerBump: UInt8 { get }
     var sellerFeeBasisPoints: UInt16 { get }
     var requiresSignOff: Bool { get }
     var canChangeSalePrice: Bool { get }
     var escrowPaymentBump: UInt8 { get }
     var hasAuctioneer: Bool { get }
     var auctioneerAddress: PublicKey { get }
     var scopes: [Bool] /* size: 7 */ { get }
}

/**
 * Holds the data for the {@link Auctionhouse} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Auctionhouse: AuctionhouseArgs {
  public static let auctionHouseDiscriminator = [97, 99, 99, 111, 117, 110, 116, 58] as [UInt8]

  public let auctionHouseDiscriminator: [UInt8]
  public let auctionHouseFeeAccount: PublicKey
  public let auctionHouseTreasury: PublicKey
  public let treasuryWithdrawalDestination: PublicKey
  public let feeWithdrawalDestination: PublicKey
  public let treasuryMint: PublicKey
  public let authority: PublicKey
  public let creator: PublicKey
  public let bump: UInt8
  public let treasuryBump: UInt8
  public let feePayerBump: UInt8
  public let sellerFeeBasisPoints: UInt16
  public let requiresSignOff: Bool
  public let canChangeSalePrice: Bool
  public let escrowPaymentBump: UInt8
  public let hasAuctioneer: Bool
  public let auctioneerAddress: PublicKey
  public let scopes: [Bool] /* size: 7 */

  /**
   * Creates a {@link Auctionhouse} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Auctionhouse {
    return Auctionhouse(
        auctionHouseDiscriminator: args["accountDiscriminator"] as! [UInt8],
        auctionHouseFeeAccount: args["auctionHouseFeeAccount"] as! PublicKey,
        auctionHouseTreasury: args["auctionHouseTreasury"] as! PublicKey,
        treasuryWithdrawalDestination: args["treasuryWithdrawalDestination"] as! PublicKey,
        feeWithdrawalDestination: args["feeWithdrawalDestination"] as! PublicKey,
        treasuryMint: args["treasuryMint"] as! PublicKey,
        authority: args["authority"] as! PublicKey,
        creator: args["creator"] as! PublicKey,
        bump: args["bump"] as! UInt8,
        treasuryBump: args["treasuryBump"] as! UInt8,
        feePayerBump: args["feePayerBump"] as! UInt8,
        sellerFeeBasisPoints: args["sellerFeeBasisPoints"] as! UInt16,
        requiresSignOff: args["requiresSignOff"] as! Bool,
        canChangeSalePrice: args["canChangeSalePrice"] as! Bool,
        escrowPaymentBump: args["escrowPaymentBump"] as! UInt8,
        hasAuctioneer: args["hasAuctioneer"] as! Bool,
        auctioneerAddress: args["auctioneerAddress"] as! PublicKey,
        scopes: args["scopes"] as! [Bool] /* size: 7 */
    )
  }
  /**
   * Deserializes the {@link Auctionhouse} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Auctionhouse, Int )  {
    return Auctionhouse.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Auctionhouse} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Auctionhouse, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Auctionhouse.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Auctionhouse} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Auctionhouse, Int ) {
    return auctionHouseBeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Auctionhouse} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return auctionHouseBeet.serialize(instance: Auctionhouse(auctionHouseDiscriminator : self.auctionHouseDiscriminator,
        auctionHouseFeeAccount : self.auctionHouseFeeAccount,
        auctionHouseTreasury : self.auctionHouseTreasury,
        treasuryWithdrawalDestination : self.treasuryWithdrawalDestination,
        feeWithdrawalDestination : self.feeWithdrawalDestination,
        treasuryMint : self.treasuryMint,
        authority : self.authority,
        creator : self.creator,
        bump : self.bump,
        treasuryBump : self.treasuryBump,
        feePayerBump : self.feePayerBump,
        sellerFeeBasisPoints : self.sellerFeeBasisPoints,
        requiresSignOff : self.requiresSignOff,
        canChangeSalePrice : self.canChangeSalePrice,
        escrowPaymentBump : self.escrowPaymentBump,
        hasAuctioneer : self.hasAuctioneer,
        auctioneerAddress : self.auctioneerAddress,
        scopes : self.scopes))
  }
    /**
  * Returns the byteSize of a {@link Buffer} holding the serialized data of
  * {@link Auctionhouse}
  */
  static func byteSize() -> UInt {
      return auctionHouseBeet.byteSize
  }
  /**
  * Fetches the minimum balance needed to exempt an account holding
  * {@link Auctionhouse} data from rent
  *
  * @param connection used to retrieve the rent exemption information
  */
  static func getMinimumBalanceForRentExemption(
      connection: Api,
      commitment: Commitment?,
      onComplete: @escaping(Result<UInt64, Error>) -> Void
  ) {
      return connection.getMinimumBalanceForRentExemption(dataLength: UInt64(Auctionhouse.byteSize()), commitment: commitment, onComplete: onComplete)
  }
  /**
  * Determines if the provided {@link Buffer} has the correct byte size to
  * hold {@link Auctionhouse} data.
  */
  static func hasCorrectByteSize(buf: Foundation.Data, offset:Int=0) -> Bool {
      return buf.bytes.count - offset == Auctionhouse.byteSize()
  }
}
  /**
   * @category Accounts
   * @category generated
   */
  public let auctionHouseBeet = BeetStruct(
    fields:[
        ("accountDiscriminator", (.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("auctionHouseFeeAccount", (.init(value: .scalar(BeetPublicKey())))),
        ("auctionHouseTreasury", (.init(value: .scalar(BeetPublicKey())))),
        ("treasuryWithdrawalDestination", (.init(value: .scalar(BeetPublicKey())))),
        ("feeWithdrawalDestination", (.init(value: .scalar(BeetPublicKey())))),
        ("treasuryMint", (.init(value: .scalar(BeetPublicKey())))),
        ("authority", (.init(value: .scalar(BeetPublicKey())))),
        ("creator", (.init(value: .scalar(BeetPublicKey())))),
        ("bump", (.init(value: .scalar(u8())))),
        ("treasuryBump", (.init(value: .scalar(u8())))),
        ("feePayerBump", (.init(value: .scalar(u8())))),
        ("sellerFeeBasisPoints", (.init(value: .scalar(u16())))),
        ("requiresSignOff", (.init(value: .scalar(bool())))),
        ("canChangeSalePrice", (.init(value: .scalar(bool())))),
        ("escrowPaymentBump", (.init(value: .scalar(u8())))),
        ("hasAuctioneer", (.init(value: .scalar(bool())))),
        ("auctioneerAddress", (.init(value: .scalar(BeetPublicKey())))),
        ("scopes", (.init(value: .collection(UniformFixedSizeArray<Bool>(element: .init(value: .scalar(bool())), len: 7)))))
    ],
    construct: Auctionhouse.fromArgs,
    description: "Auctionhouse"
)
