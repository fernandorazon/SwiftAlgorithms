//
//  fish.swift
//  plasticFishes
//
//  Created by Roberto Garcia on 4/6/18.
//  Copyright © 2018 Roberto Garcia. All rights reserved.
//

import Foundation


struct fish: Decodable {
    
    let id: String
    let name: String
    let text: String?
    let apiUrl: String
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case apiUrl = "api_url"
        case imageUrl = "image_url"
        case id, name, text
    }
    
}
