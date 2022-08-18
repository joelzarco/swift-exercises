import Foundation

/*
 Simple, given a string of words, return the length of the shortest word(s).

 String will never be empty and you do not need to account for different data types.
 */

func find_short(_ str: String) -> Int
{
    let array = str.components(separatedBy: " ")
    let min = array.reduce(array[0]){
        if($0.count < $1.count){
            return $0
        }else{
            return $1
        }
    }
    return min.count
}


find_short("Something in the way she smiles")
find_short("bitcoin take over the world maybe who knows perhaps")

// Other interesting solutions:
// using map()
func shortest1(str : String) -> Int{
    return str.components(separatedBy: " ").map{ $0.count }.min() ?? 0
}
// using sorted()

func shortestWord(str : String) -> Int{
    return str.split(separator: " ").sorted{$0.count < $1.count}[0].count
}
