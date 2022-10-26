/**
 * This code was GENERATED using the solita package.
 * Please DO NOT EDIT THIS FILE, instead rerun solita to update it or write a wrapper to add functionality.
 *
 * See: https://github.com/metaplex-foundation/solita-swift
 */
import Foundation
import Solana
import Beet

/**
 * @category Instructions
 * @category AuctioneerSell
 * @category generated
 */
public struct AuctioneerSellInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    let tradeStateBump: UInt8
    let freeTradeStateBump: UInt8
    let programAsSignerBump: UInt8
    let tokenSize: UInt64

    public init(
        instructionDiscriminator: [UInt8] /* size: 8 */ = auctioneerSellInstructionDiscriminator,
        tradeStateBump: UInt8,
        freeTradeStateBump: UInt8,
        programAsSignerBump: UInt8,
        tokenSize: UInt64
    ) {
        self.instructionDiscriminator = instructionDiscriminator
        self.tradeStateBump = tradeStateBump
        self.freeTradeStateBump = freeTradeStateBump
        self.programAsSignerBump = programAsSignerBump
        self.tokenSize = tokenSize
    }
}
/**
 * @category Instructions
 * @category AuctioneerSell
 * @category generated
 */
public let auctioneerSellStruct = FixableBeetArgsStruct<AuctioneerSellInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        ("tradeStateBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("freeTradeStateBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("programAsSignerBump", Beet.fixedBeet(.init(value: .scalar(u8())))),
        ("tokenSize", Beet.fixedBeet(.init(value: .scalar(u64()))))
    ],
    description: "AuctioneerSellInstructionArgs"
)
/**
* Accounts required by the _auctioneerSell_ instruction
*
* @property [_writable_] wallet  
* @property [_writable_] tokenAccount  
* @property [] metadata  
* @property [] authority  
* @property [**signer**] auctioneerAuthority  
* @property [] auctionHouse  
* @property [_writable_] auctionHouseFeeAccount  
* @property [_writable_] sellerTradeState  
* @property [_writable_] freeSellerTradeState  
* @property [] ahAuctioneerPda  
* @property [] programAsSigner   
* @category Instructions
* @category AuctioneerSell
* @category generated
*/
public struct AuctioneerSellInstructionAccounts {
    let wallet: PublicKey
    let tokenAccount: PublicKey
    let metadata: PublicKey
    let authority: PublicKey
    let auctioneerAuthority: PublicKey
    let auctionHouse: PublicKey
    let auctionHouseFeeAccount: PublicKey
    let sellerTradeState: PublicKey
    let freeSellerTradeState: PublicKey
    let ahAuctioneerPda: PublicKey
    let programAsSigner: PublicKey
    let tokenProgram: PublicKey?
    let systemProgram: PublicKey?
    let rent: PublicKey?

    public init(
        wallet: PublicKey,
        tokenAccount: PublicKey,
        metadata: PublicKey,
        authority: PublicKey,
        auctioneerAuthority: PublicKey,
        auctionHouse: PublicKey,
        auctionHouseFeeAccount: PublicKey,
        sellerTradeState: PublicKey,
        freeSellerTradeState: PublicKey,
        ahAuctioneerPda: PublicKey,
        programAsSigner: PublicKey,
        tokenProgram: PublicKey? = nil,
        systemProgram: PublicKey? = nil,
        rent: PublicKey? = nil
    ) {
        self.wallet = wallet
        self.tokenAccount = tokenAccount
        self.metadata = metadata
        self.authority = authority
        self.auctioneerAuthority = auctioneerAuthority
        self.auctionHouse = auctionHouse
        self.auctionHouseFeeAccount = auctionHouseFeeAccount
        self.sellerTradeState = sellerTradeState
        self.freeSellerTradeState = freeSellerTradeState
        self.ahAuctioneerPda = ahAuctioneerPda
        self.programAsSigner = programAsSigner
        self.tokenProgram = tokenProgram
        self.systemProgram = systemProgram
        self.rent = rent
    }
}

public let auctioneerSellInstructionDiscriminator = [251, 60, 142, 195, 121, 203, 26, 183] as [UInt8]

/**
* Creates a _AuctioneerSell_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
  * @param args to provide as instruction data to the program
 * 
* @category Instructions
* @category AuctioneerSell
* @category generated
*/
public func createAuctioneerSellInstruction(accounts: AuctioneerSellInstructionAccounts, 
args: AuctioneerSellInstructionArgs, programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = auctioneerSellStruct.serialize(
            instance: ["instructionDiscriminator": auctioneerSellInstructionDiscriminator,
"tradeStateBump": args.tradeStateBump,
  "freeTradeStateBump": args.freeTradeStateBump,
  "programAsSignerBump": args.programAsSignerBump,
  "tokenSize": args.tokenSize])

    let keys: [AccountMeta] = [
        AccountMeta(
            publicKey: accounts.wallet,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.tokenAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.metadata,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.authority,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.auctioneerAuthority,
            isSigner: true,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.auctionHouse,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.auctionHouseFeeAccount,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.sellerTradeState,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.freeSellerTradeState,
            isSigner: false,
            isWritable: true
        ),
        AccountMeta(
            publicKey: accounts.ahAuctioneerPda,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.programAsSigner,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.tokenProgram ?? PublicKey.tokenProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        AccountMeta(
            publicKey: accounts.rent ?? PublicKey.sysvarRent,
            isSigner: false,
            isWritable: false
        )
    ]

    let ix = TransactionInstruction(
                keys: keys,
                programId: programId,
                data: data.0.bytes
            )
    return ix
}