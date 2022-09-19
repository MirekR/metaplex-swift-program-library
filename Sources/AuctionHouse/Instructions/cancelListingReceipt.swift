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
 * @category CancelListingReceipt
 * @category generated
 */
public struct CancelListingReceiptInstructionArgs{
    let instructionDiscriminator: [UInt8] /* size: 8 */
    
}
/**
 * @category Instructions
 * @category CancelListingReceipt
 * @category generated
 */
public let cancelListingReceiptStruct = FixableBeetArgsStruct<CancelListingReceiptInstructionArgs>(
    fields: [
        ("instructionDiscriminator", Beet.fixedBeet(.init(value: .collection(UniformFixedSizeArray<UInt8>(element: .init(value: .scalar(u8())), len: 8))))),
        
    ],
    description: "CancelListingReceiptInstructionArgs"
)
/**
* Accounts required by the _cancelListingReceipt_ instruction
*
* @property [_writable_] receipt  
* @property [] instruction   
* @category Instructions
* @category CancelListingReceipt
* @category generated
*/
public struct CancelListingReceiptInstructionAccounts {
        let receipt: PublicKey
        let systemProgram: PublicKey?
        let instruction: PublicKey
}

public let cancelListingReceiptInstructionDiscriminator = [103, 108, 111, 98, 97, 108, 58, 99] as [UInt8]

/**
* Creates a _CancelListingReceipt_ instruction.
*
* @param accounts that will be accessed while the instruction is processed
* @category Instructions
* @category CancelListingReceipt
* @category generated
*/
public func createCancelListingReceiptInstruction(accounts: CancelListingReceiptInstructionAccounts, 
programId: PublicKey=PublicKey(string: "hausS13jsjafwWwGqZTUQRmWyvyxn9EQpqMwV1PBBmk")!) -> TransactionInstruction {

    let data = cancelListingReceiptStruct.serialize(
            instance: ["instructionDiscriminator": cancelListingReceiptInstructionDiscriminator ])

    let keys: [Account.Meta] = [
        Account.Meta(
            publicKey: accounts.receipt,
            isSigner: false,
            isWritable: true
        ),
        Account.Meta(
            publicKey: accounts.systemProgram ?? PublicKey.systemProgramId,
            isSigner: false,
            isWritable: false
        ),
        Account.Meta(
            publicKey: accounts.instruction,
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