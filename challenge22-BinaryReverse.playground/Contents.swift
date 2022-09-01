import Foundation

/*
 Create a function that accepts an unsigned 8-bit integer and returns its binary reverse.
 Tip: Whe you get a binary representation of a number, Swift will always use as few bits as posible, pad bits to eigth binary digits before reversing
 
 */
// the problem is mostly how to properly pad the 8bit number
// One easy solution is with String method String(repeating: String, count : int)

// The right binary padding can be obtained with resting (8 - binaryNumber.count)

func reverseNumber(number : UInt) -> UInt{
    // convert to binary
    let binary = String(number, radix: 2)
    // calculate padding
    let padding = 8 - binary.count
    // concatenate strings to proper pad
    let paddedBinary = String(repeating: "0", count: padding) + binary
    // reverse as string
    let reverseBinary = String(paddedBinary.reversed())
    return UInt(reverseBinary, radix: 2)!
}


let test1 : UInt = 32 // 4
let test2 : UInt = 41 // 148
let test3 : UInt = 148 // must be symmetrical

reverseNumber(number: test1)
reverseNumber(number: test2)
reverseNumber(number: test3)
