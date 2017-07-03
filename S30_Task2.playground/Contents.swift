//: Playground - noun: a place where people can play

import UIKit

var str = 0

var name = ["[M] Alex", "[M] John", "[F] Anna", "[M] David", "[F] Victoria", "[M] Smith"]
var symbol = 0
for a in name {
    if a.hasPrefix("[M]"){
        symbol += 1
    }
}
print (symbol)
