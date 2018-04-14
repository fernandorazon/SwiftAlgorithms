//: [Previous](@previous)

import UIKit

class Empleado {
    
    var sueldo: Int{
        willSet{
            
            if newValue < descuentos {
                
                print("No es un descuento valido")
                
            }
        
        } didSet {
            
            print("El sueldo con descuento es: \(sueldo - descuentos)")
        }
    }
    var descuentos: Int
    
    init(sueldo: Int,descuento: Int){
        
        self.sueldo = 0
        self.descuentos = 0
        
        if self.descuentos > self.sueldo {
            
            
            
        }
        
    }
    
}

let juan = Empleado(sueldo: 100, descuento: 3)

juan.sueldo = 200




