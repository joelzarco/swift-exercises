import Foundation

/* Challenge 11
    Write a function that accepts two strings and returns true if they are identical in length but
    have no more than three different letters.
 Take letter case and string order into account
 
 */

func newSplit(string : String) -> [String]{
    let array : [String] = string.map{String($0)}
    print(array)
    return array
}

func compareStrings(input1 : String, input2 : String) -> Bool{
    let array1 = newSplit(string: input1)
    let array2 = newSplit(string: input2)
    var counter : Int = 0
    if(input1.count != input2.count){
        return false
    }
    
    for (index, letter) in input1.enumerated(){
        if(String(letter) == array2[index]){
            print("equal letter")
        }else{
            counter += 1
            print("Different letter")
        }
    }
    
    if(counter <= 3){
        return true
    }else{
        return false
    }
    
}
compareStrings(input1: "Clamp", input2: "Cramp")
compareStrings(input1: "Clamp", input2: "Grans")
// tests :
/*
 
 Clamp, Cramp -> true
 Clamp, cramps -> True
 Clamp Grams -> True
 Clamp, Grans -> false
 
 */
