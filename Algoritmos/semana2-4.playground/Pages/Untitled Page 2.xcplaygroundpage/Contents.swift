//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//Ciclo for
//Se usa underscore para evitar declarar variables innecesarias
var valor = 0

for _ in 0...10{
    valor += 1
}

for i in 0...10 where i % 2 == 0{
    valor += 1
    print(valor)
    print(i)
}
