import Foundation
import Darwin

// PRIME NUMBERS
/*
 Write a function that accepts an integer as parameter and returns TRUE if the number is prime.
 -A prime number IS greater than one, has no positive divisors other than 1 and itself
 */
let test1 = 11
let test2 = 13
let test3 = 9 // false
let test4 = 257

// brute force approach
func isItPrime(number : Int) -> Bool{
    guard number > 1 else{ return false}
    var isPrime : Bool = false
    for x in 2..<number{
        if(number % x == 0){
            print("(number, divisor) : (\(number), \(x))")
            isPrime = false
            return isPrime
        }else{
            isPrime = true
        }
    }
    return isPrime
}

isItPrime(number: 11)
isItPrime(number: 9)
isItPrime(number: 13)
isItPrime(number: 17)
isItPrime(number: 21)
//isItPrime(number: 16777259)

// reduce search given x * y = n, iterate up to square root of n
func primeReduced(number : Int) -> Bool{
    guard number > 2 else{return false}
    
    let max = Int(ceil(sqrt(Double(number))))
    for i in 2...max{
        if(number % i == 0){
            return false
        }
    }
    return true
}

primeReduced(number : 1111337)
primeReduced(number: 16777259)
