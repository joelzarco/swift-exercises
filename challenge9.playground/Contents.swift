import Foundation
/* Challenge 9 Pangram
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case
 A pangram  is a string that contains every letter of the alphabet at least once
 
 */

let test1 = "the quick brown fox jumps over the lazy dog"
let test2 = "Somthing in the way she smiles"
func oldSplit(string : String) -> [String]{
    let arrayofStrings = string.split(separator: " ")
    var array : [String] = [String]()
    for word in arrayofStrings{
        for letter in word{
            array.append(String(letter))
        }
    }
    print(array)
    return array
}

// lower case(), split into arrays of chars, create set
func isItApangram(sentence : String) -> Bool{
    let lower = sentence.lowercased()
    let array = oldSplit(string: lower)
    let mySet = Set(array)
    // # Hint given, alpahbets array length is 26
    if(mySet.count == 26){
        print("A true pangram")
        return true
    }else{
        print("Not a pangram")
        return false
    }
}

isItApangram(sentence: test1)
isItApangram(sentence: test2)

// Solution using reduce

func solution(input : String) -> Bool{
    let set = Set(input.lowercased())
    let letters = set.filter{ $0 >= "a" && $0 <= "z" }
    return (letters.count == 26)
}

solution(input: test1)
