//: [Previous](@previous)

import UIKit

protocol Vehiculo {
    func acelerar()
    func frenar()
    var wheels: Int {get}
}

protocol Pintar {
    
    var color: String {get}
    
    func pintar()
    
    
}

@objc protocol Tuning {
    @objc optional func tunea()
}

class Moto: Vehiculo, Pintar {
    
    var color: String{
        get {
            return "Color"
        }
    }
    
    func acelerar() {
        print("Acelera...")
    }
    
    func frenar() {
        print("...Frena")
    }
    
    func pintar() {
        print("pintar")
    }
    
    var wheels: Int {
        get{
            return 0
        }
    }
    
}

class Otro: Tuning {
    func tunea() {
        print("Tunea")
    }
}

//Como agregar un protocolo a una clase
protocol Reflexion{
    var tipoReflexion: String {get}
}

extension String: Reflexion {
    
    var tipoReflexion: String {
        return "Bonito dia"
    }
    
}

var a: String = "Hola"

print(a.tipoReflexion)











