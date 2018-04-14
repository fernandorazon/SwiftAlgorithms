//: [Previous](@previous)

import Foundation

protocol Queue{
    
    //Te permite hacer un tipo de dato "nuevo"
    associatedtype QueueType
    
    mutating func addItem(item: QueueType)
    
    mutating func getItem() -> QueueType?
    
    func count() -> Int
    
}

struct IntQueue: Queue {
    
    
    //typealias QueueType = <#type#>
    
    
    var items = [Int]()
    
    func addItem(item: IntQueue.QueueType) {
        items.append(item)
    }
    
    
    
    
    func getItem() -> IntQueue.QueueType? {
        return items.remove(at: 0)
    }
    
    func count() -> Int {
        return items.count
    }
    
    
    
}



//: [Next](@next)
