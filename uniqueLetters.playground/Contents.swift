// Challenge 1
import Foundation
// write a function that accepts a String as only parameter and returns true if it only has unique letters. Letter case taken into account

func uniqueLetters(input : String) -> Bool{
    let splittedString = input.split(separator: " ")
//    print(splittedString)
    // create plain array of chars
    var arrayOfChars = [String]()
    for word in splittedString{
        for letter in word{
            arrayOfChars.append(String(letter))
        }
    }
//    print(arrayOfChars)
    let mySet = Set(arrayOfChars)
    // use set.count property to check for uniqnes
    if(mySet.count == arrayOfChars.count){
        print("unique letters")
        return true
    }else{
        print("Duplicate letters")
        return false
    }
}

let greeting = "Helo aAbBcC "
uniqueLetters(input: greeting)
