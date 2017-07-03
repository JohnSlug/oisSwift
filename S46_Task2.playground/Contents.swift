//: Playground - noun: a place where people can play

import UIKit

var Vowels: [String] = []
var Consonants: [String] = []
var other: [String] = []
let array: [Character] = ["a","b","d",",","%"]
for char in array {
    switch char {
    case "a", "e", "i", "o", "u":
        Vowels.append(String(char))
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
         "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        Consonants.append(String(char))
    default:
        other.append(String(char))
    }
}