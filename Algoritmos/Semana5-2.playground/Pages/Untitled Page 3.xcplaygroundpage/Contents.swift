//: [Previous](@previous)

import UIKit

//Una clase siempre necesita constructores y una estructura no

class Alumno {
    
    var numCuenta: String
    
    init(numCuenta: String){
        self.numCuenta = numCuenta
    }
    
    deinit {
        print()
    }
    
}

class Ingenieria: Alumno {
    
}

struct Profesor {
    var numEmpleo: String
}

var marduk =  Profesor(numEmpleo: "000")

var parrita = Alumno(numCuenta: "55555")






