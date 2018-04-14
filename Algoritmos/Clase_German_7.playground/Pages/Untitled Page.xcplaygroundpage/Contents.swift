//: Playground - noun: a place where people can play

import UIKit

//Closures

//Los clousures son funciones anonimas
//Una variable puede ser una funcion al mismo tiempo
//A diferencia de las funciones los closures siempre deben regresar algo
//Esto para salir de

//Declaracion del closure
var miClosures: (Int,Int) -> Int

miClosures = {(a: Int, b: Int) -> Int in //El in identifica al closure
    return a + b
}

//let resultado = miClosures(3,2)

func ejecutaOperacion(_ closure:( Int, Int)-> Int, a:Int, b:Int){
    _ = closure(a,b)
}

ejecutaOperacion(miClosures, a: 10, b: 40)

//Se puede hacer referencia a cualquier closure con su firma

var closureMultiplicacion = {(a: Int, b: Int) -> Int in
    return a * b
}

ejecutaOperacion(closureMultiplicacion, a: 7, b: 8)

//Los closures se pueden ejecutar tanto de forma sincrona como asincrona

miClosures = {
    $0 + $1
}


ejecutaOperacion(miClosures, a: 20, b: 30)
ejecutaOperacion(closureMultiplicacion, a: 3, b: 2)







