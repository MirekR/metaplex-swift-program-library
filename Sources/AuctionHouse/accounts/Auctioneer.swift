/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Beet
import Solana
import BeetSolana


/**
* Arguments used to create {@link Auctioneer}
* @category Accounts
* @category generated
*/
public protocol AuctioneerArgs {
    var auctioneerDiscriminator: [UInt8] { get }
     var auctioneerAuthority: PublicKey { get }
     var auctionHouse: PublicKey { get }
     var bump: UInt8 { get }
}

/**
 * Holds the data for the {@link Auctioneer} Account and provides de/serialization
 * functionality for that data
 *
 * @category Accounts
 * @category generated
 */
public struct Auctioneer: AuctioneerArgs {
  public static let auctioneerDiscriminator = [97, 99, 99, 111, 117, 110, 116, 58] as [UInt8]

  public let auctioneerDiscriminator: [UInt8]
  public let auctioneerAuthority: PublicKey
  public let auctionHouse: PublicKey
  public let bump: UInt8

  /**
   * Creates a {@link Auctioneer} instance from the provided args.
   */
  public static func fromArgs(args: Args) -> Auctioneer {
    return Auctioneer(
        auctioneerDiscriminator: args["accountDiscriminator"] as! [UInt8],
        auctioneerAuthority: args["auctioneerAuthority"] as! PublicKey,
        auctionHouse: args["auctionHouse"] as! PublicKey,
        bump: args["bump"] as! UInt8
    )
  }
  /**
   * Deserializes the {@link Auctioneer} from the data of the provided {@link web3.AccountInfo}.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func fromAccountInfo(
    accountInfo: Foundation.Data,
    offset:Int=0
  ) -> ( Auctioneer, Int )  {
    return Auctioneer.deserialize(buf: accountInfo, offset: offset)
  }
  /**
   * Retrieves the account info from the provided address and deserializes
   * the {@link Auctioneer} from its data.
   *
   * @throws Error if no account info is found at the address or if deserialization fails
   */
  public static func fromAccountAddress(
    connection: Api,
    address: PublicKey,
    onComplete: @escaping (Result<Auctioneer, Error>) -> Void
  ) {
    connection.getAccountInfo(account: address.base58EncodedString) { result in
        switch result {
            case .success(let pureData):
                if let data = pureData.data?.value {
                    onComplete(.success(Auctioneer.deserialize(buf: data).0))
                } else {
                    onComplete(.failure(SolanaError.nullValue))
                }
            case .failure(let error):
                onComplete(.failure(error))
        }
    }
  }
  /**
   * Deserializes the {@link Auctioneer} from the provided data Buffer.
   * @returns a tuple of the account data and the offset up to which the buffer was read to obtain it.
   */
  public static func deserialize(
    buf: Foundation.Data,
    offset: Int = 0
  ) -> ( Auctioneer, Int ) {
    return auctioneerBeet.deserialize(buffer: buf, offset: offset)
  }
  /**
   * Serializes the {@link Auctioneer} into a Buffer.
   * @returns a tuple of the created Buffer and the offset up to which the buffer was written to store it.
   */
  public func serialize() -> ( Foundation.Data, Int ) {
    return auctioneerBeet.serialize(instance: Auctioneer(auctioneerDiscriminator : self.auctioneerDiscriminator,
        auctioneerAuthority : self.auctioneerAuthority,
        auctionHouse : self.auctionHouse,
        bump : self.bump))
  }
    /**
  * Returns the byteSize of a {@link Buffer} holding the serialized data of
  * {@link Auctioneer}
  */
  static func byteSize() -> UInt {
      return auctioneerBeet.byteSize
  }
  /**
  * Fetches the minimum balance needed to exempt an account holding
  * {@link Auctioneer} data from rent
  *
  * @param connection used to retrieve the rent exemption information
  */
  static func getMinimumBalanceForRentExemption(
      connection: Api,
      commitment: Commitment?,
      onComplete: @escaping(Result<UInt64, Error>) -> Void
  ) {
      return connection.getMinimumBalanceForRentExemption(dataLength: UInt64(Auctioneer.byteSize()), commitment: commitment, onComplete: onComplete)
  }
  /**
  * Determines if the provided {@link Buffer} has the correct byte size to
  * hold {@link Auctioneer} data.
  */
  static func hasCorrectByteSize(buf: Foundation.Data, offset:Int=0) -> Bool {
      return buf.bytes.count - offset == Auctioneer.byteSize()
  }
}
  /**
   * @category Accounts
   * @category generated
   */
  public let auctioneerBeet = BeetStruct(
    fields:[
        ("accountDiscriminator", (.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("auctioneerAuthority", (.init(value: .scalar(BeetPublicKey())))),
        ("auctionHouse", (.init(value: .scalar(BeetPublicKey())))),
        ("bump", (.init(value: .scalar(u8()))))
    ],
    construct: Auctioneer.fromArgs,
    description: "Auctioneer"
)
