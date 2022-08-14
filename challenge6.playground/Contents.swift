import UIKit
/*
 Write a function that accepts a string as input and returns the same string with duplicate letters removed
 */

func splitIntoChars(str : String) -> [String] {
    var arrayOfChars = [String]()
    for letter in str{
        arrayOfChars.append(String(letter))
    }
    return arrayOfChars
}
func newSplit(string : String) -> [String]{
    let array : [String] = string.map{String($0)}
    print(array)
    return array
}
// split string into array
// compare sith .contains() and .append() to new array
// .joined() to return String
func removeDuplicate(myStr : String) -> String{
    let arr1 = splitIntoChars(str: myStr)
    var nonDuplicate = [String]()
//    print(arr1)
    for letter in arr1{
        if (nonDuplicate.contains(letter)){
            //print("Duplicate")
        }else{
            nonDuplicate.append(letter)
        }
    }
    print(nonDuplicate)
    return nonDuplicate.joined()
}


removeDuplicate(myStr: "Mississippi")
newSplit(string: "Mississippi")
removeDuplicate(myStr: "programming")

// Other solutions include using NSOrderedSet and updateValue() with dictionaries and reduce
