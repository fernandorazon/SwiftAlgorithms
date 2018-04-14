//Playground - noun: a place where people can play



import UIKit

var str = "Hello, playground"
print(str)


//let: VALORES DENTRO DEL PROGRAMA QUE NO CAMBIAN. DEBIDO A SU NATURALEZA ES RAPIDO
//var: REQUIERE CICLOS DE RELOJ POR LO QUE ES MAS LENTA

//Tipado por inferencia. Swift intuye el tipo de var y let inmediatamente

let nombre = "Fernando"
var edad = 20

//Tidpado seguro, se especifica el tipo de variable

let apellido: String = "Razon"

//Swift trata a todo elemento como un objeto, por lo que todo pertenece a una clase
//De ahi que swift ya no ve datos primitivos
//Se puede acceder a metodos y valores con el punto

//Los tipos de valores principales:
//string, int, float, double, bool

var promedio: Float = 6.9

var entero: Int = 7

//Cast

entero = Int(promedio)

//El analizador sintactico de swift es estricto en la forma en la que se escribe
var a:Int = 10
var b: Int = 20

a + b
// a +b Esta linea no es valida

a - b
a / b
a * b
a % b

// if, else if, else

//Los operadores logicos son los mismos
// : == > < => !=

var condicion: Bool = true

if condicion {
    print("Hola mundo")
} else {
    print("Adios mundo")
}















