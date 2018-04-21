//
//  NetworkLayer.swift
//  thisProjectIsWhatFor
//
//  Created by d182_fernando_r on 20/04/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import Foundation
import UIKit

class Network {
    
    struct UserLogin: Encodable {
        var user: String
        var password: String
    }
    
    
    
    class func currentUser(_ completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "ioslab-sample.herokuapp.com"
        components.path = "/users/current"
        
        var req = URLRequest(url: components.url!)
        // httpMethod is an string variable that must
        // conform any of the http protocol methods:
        // GET, POST, PUT, PATCH, DELETE, HEADER, OPTIONS
        // default is GET
        req.httpMethod = "POST"
        
        // httpBody a variable that conform the request body
        // as an optional data
        // default is nil
        let user = UserLogin(user: "admin@example.com", password: "tacocat1234")
        
        
        
        
        req.httpBody = try? JSONEncoder().encode(user)
        
        // For authorization via header
        // you can set values with the addValue method
        req.addValue("Basic 19c48aff0dae4a20b5dd2eb322ae37a2", forHTTPHeaderField: "Authorization")
        
        let session = URLSession.shared
        let task = session.dataTask(with: req, completionHandler: completion)
        task.resume()
    }
    
    
//    class func currentUserParsed(_ completion: @escaping (User) -> Void) {
//        currentUser { (data, response, error) in
//            guard error == nil else {
//                print("ERROR: \(error!)")
//                return
//            }
//            guard let unwrappedData = data else {
//                print("Empty response")
//                return
//            }
//            
//            let resp = response as! HTTPURLResponse
//            if resp.statusCode == 200 {
//                do {
//                    let parsedJson = try JSONDecoder().decode(User.self, from: unwrappedData)
//                    completion(parsedJson)
//                } catch let err {
//                    print("Unable to parse JSON: \(err)")
//                }
//            } else {
//                print("Unsuccesful request: \(resp)")
//            }
//        }
}
