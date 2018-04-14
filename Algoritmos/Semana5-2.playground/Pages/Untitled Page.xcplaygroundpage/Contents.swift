//: Playground - noun: a place where people can play

import UIKit

enum resultadoWebService {
    
    case Exito(String)
    case Error(Int)
    
}

func llamadaWS() -> resultadoWebService{
    if true {
        return resultadoWebService.Exito("Mi contenido")
//    } else {
   //     return resultadoWebService.Error(502)
    }
}

let resultado: resultadoWebService = llamadaWS()

switch resultado {
    
case let .Exito(contenido):
    print(contenido)
    
case let .Error(code):
    print("Codigo de error \(code)")
}

