//: Playground - noun: a place where people can play

import UIKit

protocol Person {
    
    var firstName: String{get set}
    init(firstName: String)
    
}

var personArray = [Person]()
var personDict = [String: Person]()

struct Student: Person {
    var firstName: String
    init(firstName: String) {
        self.firstName = firstName
    }
    
}

struct Teacher: Person {
    var firstName: String
    init(firstName: String) {
        self.firstName = firstName
        
    }
    
}

var alumno = Student(firstName:"Parra")
var profesor = Teacher(firstName:"German")

var academicos: [Person] = []
academicos.append(alumno)
academicos.append(profesor)


print("Mis academicos son: ")
for academicos in academicos {
    
    print("\(academicos.firstName) ")
    
}

for academicos in academicos where academicos is Teacher {
    
    print("Hay un profe y se llama: \(academicos.firstName)")
    
}










