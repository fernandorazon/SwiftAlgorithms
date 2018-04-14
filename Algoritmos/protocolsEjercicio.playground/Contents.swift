//: Playground - noun: a place where people can play

import UIKit

protocol Evaluable {
    
    func examinar()
    
    
}


enum CurrentStatus {
    case Paso
    case NoPaso
}

class Alumno{
    
    var numCuenta: Int = 0
    
}

class Ingeniero: Alumno {
    


    var promedio: Int = 0
    var estatus: CurrentStatus = .Paso
    
}

extension Ingeniero: Evaluable {
    
    func examinar() {
        if promedio > 6 {
            return self.estatus = .Paso
        } else {
            return self.estatus = .NoPaso
        }
    }
    
}


