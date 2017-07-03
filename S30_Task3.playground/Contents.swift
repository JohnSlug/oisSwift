//: Playground - noun: a place where people can play

import UIKit

var palindrom = "поп"
var reversedPalindrom = String(palindrom.characters.reversed())
let checkPolindrom = palindrom.uppercased()
let checkReverse = reversedPalindrom.uppercased()
if checkPolindrom == checkReverse{
    print ("YES")
}else{
    print ("NO")
}
