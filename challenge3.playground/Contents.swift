import Foundation
/*
 Challenge 3
 Write a function that accepts two String params and returns true if they contain the same characters in ANY order taking into account letter case
 
 */

func splitIntoChars(str : String) -> [String] {
    var arrayOfChars = [String]()
    for letter in str{
        arrayOfChars.append(String(letter))
    }
    return arrayOfChars
}

func containsStrings(s1 : String, s2 : String) -> Bool {
    // split into array of chars
    // sort array
    // compare length
    var arr1 = splitIntoChars(str: s1)
    var arr2 = splitIntoChars(str: s2)
    arr1.sort()
    arr2.sort()
    if(arr1 == arr2 && arr1.count == arr2.count){
        return true
    }else{
        return false
    }
}
// sort and compare directly
func solution(s1 : String, s2 : String) -> Bool{
    return (s1.sorted() == s2.sorted())
}

let test1 = "abcd"
let test2 = "dcba"
let test3 = "abcde"

containsStrings(s1: test1, s2: test2)
containsStrings(s1: test1, s2: test3)

solution(s1: test2, s2: test3)
solution(s1: test2, s2: test1)
