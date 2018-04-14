//: [Previous](@previous)

class Alumno{
    
    var calificacion: Int = 0
    var nombre: String
    fileprivate var sexo: String = "M"
    
    
    var edad: Int {
        willSet{
            
            print("Nuevo valor \(newValue)")
            
        } didSet {
            print("Valor anterior \(oldValue)")
        }
    }
    
    init(nombre: String) {
        self.nombre = "Jaime"
        self.edad = 14
    }
    
    
    
    func subirCalificacion(){
        calificacion += 1
    }
    
}

class Ingenieria: Alumno {
    
    override func subirCalificacion() {
        calificacion += 10
    }
    
}

let juan = Alumno(nombre: "")






