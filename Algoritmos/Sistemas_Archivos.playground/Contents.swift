//: Playground - noun: a place where people can play

import UIKit

let fileManager = FileManager.default

//Devuelve un arreglo con el archivo document
let documentDirectories = fileManager.urls(
    for: .documentDirectory,
    in: .userDomainMask)

//Se asume que este arreglo contiene solo la ruta del document por lo que la obtenemos
let documentDirectory = documentDirectories.first!

//Lectura y escritura de datos binarios

init(contentsOf url: URL, options : Data.ReadingOptions) throws

func write(to: url: URL, options: Data.WritingOptions) throws

//Lectura y escritura de cadenas

init(contentsOf: url: URL, enconding enc: String.Encoding)throws

func write(to url:URL, atomically useAuxiliaryFile: Bool,encoding enc:String.Encoding)throws

NSCoder


