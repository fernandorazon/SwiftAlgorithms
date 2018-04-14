

//: Playground - noun: a place where people can play

import UIKit

func function(){
    
}

//Las funciones devuelven tuplas por default
let variable = function()

//Tuplas

//En la vista rapida se nos indican los indices de los miembros de la tupla
//Se accede a los miembros de la tupla a traves del operador punto

var tupla: (Int, Int) = (3, 5)
print(tupla.0)

var coordenadas: (x:Int,y:Int) = (2,3)

let (x, y) = coordenadas

// Rangos

//Rango cerrado
var rangos = 0...10

var rangos2 = 0..<10

//Metodo para que el rango este contado al reves
var rangos3 = (0...10).reversed()


var rangos4 = stride(from: 10, to: 100, by:4)

