//: [Previous](@previous)

import Foundation


var number:Int = 5

for i in 1...number {
    var a = i * (i-1)
    print(a)
    
}

func factorial(n:Int) {
    if n = 0 || n = 1 {
        return 1
    } else {
        return n * factorial(n: n-1)
    }
}



