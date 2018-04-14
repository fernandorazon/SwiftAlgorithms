//: [Previous](@previous)

import UIKit

var str = "Hello, playground"

//:Closure vacio

var closureSinRetorno: () -> Void = {
    print("No regresare nada")
}

//O bien

var closureSinRetorno2 = {() -> Void in
    print("No regreso nada tampoco")
}

//Esta es una variable del closure vacio

func vacio(_ clos: () -> Void){
    clos()
}

vacio(closureSinRetorno2)

//Un closure resuelve el problema de la forma en la que los parametros
//Son ingresados en la funcion

var num = 0

func incrementa(variable: inout Int){
    variable += 1
}

let incrementa2 = {
    num += 1
}

//Esta funcion regresa un closure
//Y el closure regresa un entero
func incrementaClosure() -> () -> Int {
    var contador = 0
    let incrementa: () -> Int = {
        contador += 1
        return contador
    }
    return incrementa
}

let contador = incrementaClosure()

//Funciones por default en swift sobre closures

let letras = ["z","k","l","a"]

letras.sorted()

//$0 se refiere al primer elemento del arreglo

letras.sorted {
    $0.count > $1.count
}

print(letras)

letras.forEach { (String) in
    print(String)
}

let numeros = [1,2,3,4,5,6]

//No es necesario ser explicito en valores tipo int

numeros.forEach {
    print($0)
}


let filtrados = numeros.filter {
    return $0 > 3
}

let mapeados = numeros.map {
    return $0 * 10
}

//flatMap no regresa nil

let numerosDeUsuario = letras.flatMap{
    Int($0)
}

//
let total = numeros.reduce(15){
    return $0 + $1
}

print(total)




