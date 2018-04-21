//
//  Models.swift
//  singletonGerman
//
//  Created by d182_fernando_r on 21/04/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit

class Category: NSObject {
    var Name: String?
    var albums: [Album]?
    
    static func samples() -> [Category]{
        
        let bestNewAlbums = Category()
        bestNewAlbums.Name = "Los mejores"
        return [bestNewAlbums]
        
        var albums = [Album]()
        
        let album = Album()
        album.category = "Rock"
        album.Name = "Queen"
        
    
    }
}

class Album: NSObject {
    var Name: String?
    var category: String?
    var image: String?
}

