//: [Previous](@previous)

import Foundation

//Declarar funciones

func function(valor:Int){
    print(valor)
}

function(valor: 3)

//Sin necesidad de referenciar al valor

func sinNombrarParametros(_ valor:Int){
    print(valor)
}

sinNombrarParametros(4)

//Se pueden usar alias

func renombrarParametros(nombreDos valor: Int){
    print(valor)
}

renombrarParametros(nombreDos: 3)

//Retornos de una funcion
//Es buena practica que los alias de la funcion tengan sentido

func multiplica(_ x: Int, por y:Int) -> Int{
    return x*y
}

multiplica(5, por: 2)


func divide(_ x: Int, entre y: Int) -> (resultado: Int, residuo: Int){
    return (x/y, x%y)
}

let resultados = divide(15, entre: 4)
print(resultados.residuo)
print(resultados.resultado)

//En swift los parametros que entran a una funcion son constantes por
//Default de modo que para poder trabajarlos como variables es necesario
//Utilizar un puntero, de forma que se modifique el contenido de la direccion, esto se logra con el metodo inout

func suma(_ a: inout Int){
    a += 1
    print(a)
}

var numero: Int = 5
suma(&numero)

//Overloading de funciones o sobrecarga de metodos
//Se pueden renombrar las funciones del mismo modo
//Aunque es un error de diseño

func getValue(_ x: Int) -> Int{
    return x
}

func getValue(_ x: String) -> String{
    return x
}

getValue(2)
getValue("Hola")

//Funciones de retorno vacio

// func nada() -> Never {
//    _ = 0
// }











