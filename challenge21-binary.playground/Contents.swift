import Foundation
/*
 Counting binary
    Create a function that accepts any positive integer and returns the next highest and lowest numbers that have the same number of 1's in its binary representation.
 If neither number exist return nil
 */

func nextHighLow(number : Int) -> (Int?, Int?){
    // convert integer to binary string
    let targetBinary = String(number, radix: 2)
    // count number of 1's with .filter()
    let targetOnes = targetBinary.filter{(char : Character) -> Bool in char == "1"}.count
    print("Numer of 1's : \(targetOnes)")
    // allocate for highest and lowest number
    var nextHighest : Int? = nil
    var nextLowest : Int? = nil
//    print(Int.max)
    // loop over from number's next to ** For signed integer types, this value is (2 ** (bitWidth - 1)) - 1, where ** is exponentiation.** A forking big number! // 9223372036854775807
    for i in number + 1...Int.max{
        // transform current temp var into binary string
        let currentBinary = String(i, radix: 2)
        // again count 1's in present iteration
        let currentOnes = currentBinary.filter{(char : Character) -> Bool in char == "1"}.count
        if (targetOnes == currentOnes){
            nextHighest = i
            print("Next hightEst: \(nextHighest)")
            break
        }
    }
    // reverse the range to loop down
    for j in (0..<number).reversed(){
        let currentBinary = String(j, radix: 2)
        let currentOnes = currentBinary.filter{ (char : Character) -> Bool in char == "1"}.count
        
        if targetOnes == currentOnes{
            nextLowest = j
            print("Next lowest: \(nextLowest)")
            break
        }
    }
    return (nextHighest, nextLowest)
}

// Stiil need to safely unwrap optionals
nextHighLow(number: 12)
nextHighLow(number: 99)
