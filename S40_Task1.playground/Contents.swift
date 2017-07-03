//: Playground - noun: a place where people can play

import UIKit

var array = [Int]()
var result: Double = 0
while array.count < 150 {
    array.append(Int(arc4random_uniform(10)))
    result += Double(array.last!)
}
result /= Double(array.count)
print(result)
