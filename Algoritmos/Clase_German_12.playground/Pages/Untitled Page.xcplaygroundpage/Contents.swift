//: Playground - noun: a place where people can play

import UIKit

class Person {
    
    var firstName: String?
    var lastName: String?
    var age: Int
    
    static var count: Int = 0
  
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
        self.age = 0
       // self.id = id
    }
    
    static func < (left: Person, rigth: Person) -> Bool {
        return left.age < rigth.age
    }
    
/*
    init?(age: Int){
        
        
        if age > 18 {
            self.age = age
        } else {
            return nil
        }
        
    }
 
 */
    
    required init(age: Int){
        
        self.age = age
        self.firstName = ""
        self.lastName = ""
        
    }
    
    
    var id: Int {
        Person.count = Person.count + 1
        return Person.count
    }
    
}

class Student: Person {
    
    weak var partner: Student?
    
    deinit {
        print("\(String(describing: firstName)) fuera...")
    }
    
}

var parra: Student? = Student(firstName: "Parrita", lastName: "Parra")
var julio: Student? = Student(firstName: "Julio", lastName: "Juliz")



parra?.partner = julio
julio?.partner = parra

parra = nil
julio = nil

if let person1: Person = Person(age: 0) {
    print(person1.age as Any)
} else {
    print("error")
}

//Sobrecarga de operadores






