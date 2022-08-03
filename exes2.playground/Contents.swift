import UIKit
import Foundation
/*
 Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

 For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

 [10, 343445353, 3453445, 3453545353453] should return 3453455.
 */


func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    let sorted = array.sorted()
    let sum : Int = sorted[0] + sorted[1]
    
  return sum
}

let ints = [2, 4, 6, 8, 10, 3, 4, 5, 1]

sumOfTwoSmallestIntegersIn(ints)

/*
 Trolls are attacking your comment section!

 A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

 Your task is to write a function that takes a string and return a new string with all vowels removed.

 For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

 Note: for this kata y isn't considered a vowel.

 */
func disemvowel(_ s: String) -> String {
    // not the most efficient solution, I know :(
    let words = s.split(separator: " ")
    let vowels : [Character] = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
    var newString = [String()]
    for word in words{
        var newWord = String()
        for letter in word{
            //print(letter)
            if (letter == vowels[0] || letter == vowels[1] || letter == vowels[2] || letter == vowels[3] || letter == vowels[4] || letter == vowels[5] || letter == vowels [6] || letter == vowels[7] || letter == vowels[8] || letter == vowels[9] ) {
                print("vowel found")
            }else{
                newWord.append(letter)
            }
        }
        newString.append(newWord)
        newWord = ""
    }
    newString.removeFirst()
    print(newString)
    return newString.joined(separator: " ")
}
func disemVowel(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}
disemvowel("This website is for losers LOL!")
/*
 func disemvowel(_ s: String) -> String {
   let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
   
   return String(s.characters.filter { !vowels.contains($0) })
 }
 */
