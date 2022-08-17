import Foundation
/*
    Challenge 10
 Given a string in English return a tuple containing the number of vowels and consonants
 ex: (vowels : Int, const : Int)
 ignore lettercase
 remove special characters
 */

let test1 = "Ask, and it shall be given you; seek, and ye shall find"
let test2 = "Time after time."
func oldSplit(string : String) -> [String]{
    let arrayofStrings = string.lowercased().split(separator: " ")
    var array : [String] = [String]()
    for word in arrayofStrings{
        for letter in word{
            array.append(String(letter))
        }
    }
    return array
}
// hor to remove punctuation characters???
func vowelsAndCons(input : String) -> (Int, Int){
    let vowels = ["a", "e", "i", "o", "u"]
//    print(input.trimmingCharacters(in: .whitespacesAndNewlines).trimmingCharacters(in: .punctuationCharacters))

    let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    let array = oldSplit(string: input)
    var count : Int = 0
    var consCount : Int = 0
    for vowel in vowels{
        for letter in array{
            if(vowel == letter){
                count += 1
            }
        }
    }
    for cons in consonants{
        for letter in array{
            if(cons == letter){
                consCount += 1
            }
        }
    }
    print("Number of vowels : \(count)")
//    let numberOfCons = array.count - count
    print("Number of consonants : \(consCount)")
    print(array)
    return (count,consCount)
}

vowelsAndCons(input: test1)
vowelsAndCons(input: test2)

// solution with .contains()
func solution(input : String) -> (Int, Int){
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased(){
        if vowels.contains(letter){
            vowelCount += 1
        }else if consonants.contains(letter){
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}
solution(input: test2)
