//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Switch and case

var edad = 5

switch edad{
    case 10:
        print("Muy chico")
    default:
        print("Exacto")
}


switch edad {
    case 0...17:
        print("Muy chico")
    case 18:
        print ("Exacto")
    default:
        print("Ya es mayor")
}

var animal: String = ""

switch animal {
case "perro","gato":
    print("Animal domestico")
default:
    print("Ni idea")
}


var coordenanas3D: (x: Int,y: Int,z: Int) = (0,0,0)

switch coordenanas3D {
case (0,0,0):
    print("origen")
case (let x,0,0):
    print("Sobre x en \(x)")
case (0,let y,0):
    print("Sobre y en \(y)")
case (0,0,_):
    print("")
default:
    break
}



















