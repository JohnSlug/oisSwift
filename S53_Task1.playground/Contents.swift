//: Playground - noun: a place where people can play

import UIKit


func fact(i :Int)->Int{
    var resultFactorial = 1
    for k in 1...i {
        resultFactorial = resultFactorial * k
    }
    return resultFactorial
}