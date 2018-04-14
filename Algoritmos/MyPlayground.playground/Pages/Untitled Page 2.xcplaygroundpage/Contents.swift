//: [Previous](@previous)

import UIKit

enum estadoDocumento: Int {
    
    case Recibido = 0, Validado, EnProceso,Publicado
    
}

//Extraer los atributos de un elemento de numeracion

//Su valor relacionado

let a = estadoDocumento.EnProceso.hashValue

//Obtener el elemento de la numeracion a partir de su identificador(rawValue o hashValue)

let estado = estadoDocumento(rawValue: 1)


