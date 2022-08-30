import Foundation
// NUMBERS CHALLENGES, easy ones still
/*
 Create a function that accepts two positivve integers and raises the first to the power of the second
 */

func myPow(number : Int, power : Int) -> Int{
    guard number > 0, power > 0 else{ return 0}
    var result = 1
    for _ in 1...power{
        result *= number
    }
    return result
}

myPow(number: 2, power: 8)

// using a recursive function

func challenge18(number : Int, power : Int) -> Int{
    guard number > 0, power > 0 else{return 0 }
    if(power == 1){return number}
    
    return number * challenge18(number: number, power: power - 1)
}

challenge18(number: 2, power: 16)
