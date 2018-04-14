//: [Previous](@previous)

import Foundation

class MySingleton {
    
    static let sharedInstance = MySingleton()
    var number = 0
    private init(){}
    
}

var singleA = MySingleton.sharedInstance
var singleB = MySingleton.sharedInstance
var singleC = MySingleton.sharedInstance

singleA.number = 9

print(singleA.number)
print(singleB.number)
print(singleC.number)


//: [Next](@next)
