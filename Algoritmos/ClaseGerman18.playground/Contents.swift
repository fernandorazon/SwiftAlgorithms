//: Playground - noun: a place where people can play

import UIKit

//Supongamos



func swapGeneric<T>(a: inout T, b: inout T){
    
    let temp = a
    a = b
    b = temp
    
}

var a = "Hola"
var b = "Juan"

swapGeneric(a: &a, b: &b)
print(swapGeneric(a: &a, b: &b))

//Dado que para 'cualquier tipo de dato' el operador no puede esta definido necesariamente
func genericEqual<T : Comparable>(a: T, b: T) -> Bool {
    return a == b
}


struct List<T>{
    
    var items = [T]()
    
    mutating func add(item: T){
        items.append(item)
    }
    
    func getItemsAtIndex(index: Int) -> T? {
        
        if items.count > index {
            return items[index]
        } else {
            return nil
        }
    }
    
    subscript(index: Int) -> T? {
        return getItemsAtIndex(index: index)
    }
    
    subscript(r: CountableClosedRange<Int>) -> [T]? {
        return Array(items[r.lowerBound...r.upperBound])
    }
    
}

var stringList = List<String>(items: ["a","b","c"])
stringList.add(item: "Stringadicional")
stringList.getItemsAtIndex(index: 0)
var intList = List<Int>(items: [1,2,3])
intList.add(item: 8)


class variosGenericos<T, E> {}
var w: variosGenericos<Int, String>


//Tipos asociados

protocol MyProtocol{
    
    associatedtype E
    var items: [E] {get}
    
}

//Estructura que implementa protocolo generico
struct MyStringType: MyProtocol {
    
    typealias E = Int
    var items: [E] = []
    mutating func addItems(item: Int) {
        items.append(item)
    }
    
}

//Estructura generica con protocolo generico
struct MyGenericStruct<T>: MyProtocol {
    
    var items:[T] = []
    mutating func addItems(item: T) {
        items.append(item)
    }

}

var MyList = List<Int>()
MyList.add(item: 35)
MyList.add(item: 25)

var valores = MyList[0...1]

precedencegroup ExponetationPrecedence{
    associatedtype: left
    
}






