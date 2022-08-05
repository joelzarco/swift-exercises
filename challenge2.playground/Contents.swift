import UIKit
import Foundation
// Challenge 2
// Write a function that accepts a String as only parameter and returns true if it is a palindrome. ignore case
// challenge does not specify if spaces should be taken into account

var greeting = "Hello Felicity Johnes"
// Fork! Maybe It was overkill!!! 
func isItPal(_ input : String)-> Bool{
    // ignore letter case
    let lower = input.lowercased()
    // split words into [String]
    let splitted = lower.split(separator: " ")
//    print(splitted)
    // split into array of chars
    var arrayOfChars = [String]()
    for word in splitted{
        for letter in word{
            arrayOfChars.append(String(letter))
        }
    }
//    print(arrayOfChars)
    // reverse array
    let reversed : [String] = arrayOfChars.reversed()
    // compare array
    if(arrayOfChars == reversed){
        return true
    }else{
        return false
    }
    
}


isItPal(greeting)
isItPal("Rats live on no evil star")

// solution without considering spaces
func challenge2(input : String) -> Bool{
    let lowerCased = input.lowercased()
    return String(lowerCased.reversed()) == lowerCased
}
challenge2(input: greeting)
challenge2(input: "rotatoR")
challenge2(input: "Rats live on no evil star")
