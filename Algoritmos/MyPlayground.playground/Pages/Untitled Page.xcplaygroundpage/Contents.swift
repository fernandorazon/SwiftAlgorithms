//: Playground - noun: a place where people can play

import UIKit

//El enum es un tipo de dato con ciertas caracteristicas
//Nos permite agrupar un grupo especifico de variables
//De esta manera se asegura que lo que llegue a cierta variable del tipo del enum de interes
//Sea siempre alguno de los casos de nuestra enumeracion

enum Dia {
    case Lunes, Martes, Miercoles, Jueves, Viernes
}

//Se puede hacer mencion al caso de la cadena con el punto, debido al sistema
//De inferencia de tipos de swift

var diaDeLaSemana: Dia

diaDeLaSemana = .Lunes

switch diaDeLaSemana {
case .Lunes :
    print("Lunes")
default:
    break
}
