//
//  fishService.swift
//  plasticFishes
//
//  Created by Roberto Garcia on 4/6/18.
//  Copyright © 2018 Roberto Garcia. All rights reserved.
//

import Foundation

class FishService {
    
    let baseUrl = URL(string: "https://plasticfishes.herokuapp.com")!
    let session = URLSession.shared
    
    
    static let shared = FishService()
    
    func all (sucess: @escaping (([fish]) -> Void)) {
        
      
//       let urlc = URLComponents()
//        urlc.queryItems
        
        let url = baseUrl.appendingPathComponent("api/fishes")
        print(url)
        
       let task = session.dataTask(with: url) { (data, response, error) in
            
            guard error == nil else { return }
            guard let httpResponse = response as? HTTPURLResponse else { return }
            
            switch httpResponse.statusCode {
                case 200:
                    self.parseFishes(data, completion: sucess)
                
            default:
                return
                
            }
            
        }
        task.resume()
    }
    
    func parseFishes(_ data: Data?, completion: @escaping (([fish]) ->Void)) -> Void {
        
        guard let data = data else { return }
        let decoder = JSONDecoder()
        
        do {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let json = try decoder.decode([fish].self, from: data)
        completion(json)
            DispatchQueue.main.async { completion(json) }
        } catch let err {
            print("Parsing Error \(err)")
        }
    }
}
