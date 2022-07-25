/*
 Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
 */
import Foundation

func evenOrOdd(_ number:Int) -> String {
  // ...
  return (number % 2 == 0) ? "Even" : "Odd"
}

/*
 Welcome. In this kata, you are asked to square every digit of a number and concatenate them.
 For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

 Note: The function accepts an integer and returns an integer
 */

func squareDigits(_ num: Int) -> Int {
    let myString = String(num)
    var myArray = [Int]()
    // first parse whole number into array of single digits
    for c in myString{
        print(c)
        myArray.append(Int(String(c))!)
    }
    // square every element
    let squareArray = myArray.map{ $0 * $0}
    // concatenate into single Int
    var wholeNumber = String()
    for n in squareArray{
        wholeNumber += "\(n)"
    }
    // Finally convert into single integer
    print(wholeNumber)
    let num = Int(wholeNumber)

    if let num = num{
        return num
    }else{
        return 0
    }
}

squareDigits(12345678)
// cool solution!
func squareEveryDigits(_ num: Int) -> Int {
  return Int(String(num).compactMap { Int(String($0)) }.compactMap { String($0 * $0) }.joined()) ?? 0
}

squareEveryDigits(345)
