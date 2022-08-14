import Foundation
/*
 Challenge 7 : Condense Whitespace
    Write a function that returns a string with any consecutive spaces replaced with a single space
 */

func condenseSpace(input : String) -> String{
//    let components : [String] = input.components(separatedBy: .whitespaces)
//    print(components)
//    components.filter{!$0.isEmpty}
//    print(components)
    // Using a flag for seenSpace
    var modString : String = ""
    var seenSpace : Bool = false
    for letter in input{
        if letter == " "{
            if seenSpace{continue}
            seenSpace = true
        } else{
            seenSpace = false
        }
        modString.append(letter)
    }
    print(modString)
    return modString
}

let test1 = " Something  in  the   way she smiles "
condenseSpace(input: test1)

// solution with regular expressions
// " +" means "match one or more spaces"
print("_________________________________________")
func solutionWithRegEx(input : String) -> String{
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

print(solutionWithRegEx(input: test1))
