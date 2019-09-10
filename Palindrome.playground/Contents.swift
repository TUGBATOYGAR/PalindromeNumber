import UIKit

/* A palindrome number is a which remains the same on reversal. For example, some palindrome numbers are 8, 121, 212, 12321
 Find the largest palindrome number that is the product of two 3-digit numbers?*/


var palArray =  [Int]()
var max : Int = 0

for max in 900000...998000{
    let variable = String(max)
    let palindrome = String(variable.reversed())
    if palindrome == variable{
        palArray.append(max)
    }
}
print(palArray)

var i : Int
var j : Int
var maxPalArray = [Int]()
for number in palArray{
    for i in 900...999{
        for j in 900...999{
            if (number % (i*j) == 0 ){
                maxPalArray.append(number)
                print("\(i) * \(j)")
            }
        }
    }
}
print(maxPalArray.max())
