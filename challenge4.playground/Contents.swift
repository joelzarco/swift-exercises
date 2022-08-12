import Foundation
/*
 Challenge 5
    Write a funcion that accepts a String and returns how many times a specific character appears. Take into account letter case
 */

var mat : String = "Ask, and it shall be given you; seek, and ye shall find"

func splitIntoChars(str : String) -> [String] {
    var arrayOfChars = [String]()
    for letter in str{
        arrayOfChars.append(String(letter))
    }
    return arrayOfChars
}

func countOcurrencies(of string : String, with char : String) -> Int{
    // with String.components() method
//    return (string.components(separatedBy: String(char)).count - 1)

    // split string into chars
    // loop over, compare and count
    var count : Int  = 0
    let arr1 = splitIntoChars(str: string)
    for letter in arr1{
        if(char == letter){
            count += 1
        }
    }
    return count
}

countOcurrencies(of: mat, with: "d")
countOcurrencies(of: "Mississippi", with: "i")

// solution with .reduce()
func solution(input : String, myChar : Character) -> Int{
    return input.reduce(0){
        $1 == myChar ? $0 + 1 : $0
    }
}

solution(input: mat, myChar: "d")
solution(input: "Mississippi", myChar: "i")
