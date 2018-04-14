//: Playground - noun: a place where people can play

import Cocoa

//Cola principal

//let main = DispatchQueue.global()
//
////Cola de menor prioridad
//
//let background = DispatchQueue.global()
//
//func doSynchWork() {
//
//    background.async {
//        for _ in 1...3 {
//            print("Ligth")
//        }
//    }
//
//    for _ in 1...3 {
//        print("Heavy")
//    }
//
//}
//
//doSynchWork()


let brownWorker = DispatchQueue(label: "construction_worker_2", qos: .background)
let asianWorker = DispatchQueue(label: "Consturction_worker_1", qos: .userInitiated)

func doLightWork() {
    
    asianWorker.async {
        for _ in 1...10{
            print("🤴🏻")
        }
    }
    
    
    
    brownWorker.sync {
        for _ in 1...10 {
            print("🤵🏿")
        }
    }
    
}

doLightWork()









