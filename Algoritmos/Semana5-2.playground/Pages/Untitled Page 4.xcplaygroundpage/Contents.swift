//: [Previous](@previous)

import UIKit

class Cartera{
    var dinero: Double
    var abonado: Double {
        get{
            print("Intereses actuales: \(dinero*0.16) pesos")
            return dinero*0.16
        }
        set{
           dinero = (dinero*0.16) + newValue
        }
    }
    
    init(dinero: Double, abonado: Double){
        print("Creando una cartera con \(dinero)")
        self.dinero = dinero
        self.abonado = abonado
    }
    deinit {
        print("Este objeto se puede")
    }
}


