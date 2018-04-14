//: [Previous](@previous)

import UIKit

protocol DisplayNameDelegate {
    
    func displayName(name: String)
    
}

struct Person {
    
    var displayNameDelegate: DisplayNameDelegate
    
    var firstName = "" {
        
        didSet {
      //      DisplayNameDelegate.displayName(name: getFullName())
        }
        
    }
    
    var lastName = "" {
        didSet {
            
        }
    
    }
    
    
    init(displayNameDelegate: DisplayNameDelegate){
        
        self.displayNameDelegate = displayNameDelegate
        
    }
    
    func getFullName() -> String{
        
        return "\(firstName) \(lastName)"
        
    }
    
    
}
