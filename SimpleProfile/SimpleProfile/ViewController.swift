//
//  ViewController.swift
//  SimpleProfile
//
//  Created by d182_fernando_r on 02/03/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    

    @IBOutlet var funButton: UIButton!
    
    @IBOutlet var texto: UITextView!
    
    @IBOutlet var imagen: UIImageView!
    
    @IBOutlet var stack: UIStackView!
    
    @IBOutlet var boton1: UIButton!
    
    @IBOutlet var boton2: UIButton!
    
    
    let color1 = UIColor(named: "505150")
    let color2 = UIColor(named: "C8BDA0")
    let color3 = UIColor(named: "E5446D")
    let color4 = UIColor(named: "F8F4E3")
    let color5 = UIColor(named: "FF8966")
    
    
    @IBAction func cambiaColor(_ sender: UIButton){
        
        var colores: [UIColor] = [color1!,color2!,color3!,color4!,color5!]
        
        funButton.backgroundColor = colores[Int(arc4random_uniform(4))]
        texto.backgroundColor = colores[Int(arc4random_uniform(4))]
        imagen.backgroundColor = colores[Int(arc4random_uniform(4))]
        boton1.backgroundColor = colores[(Int(arc4random_uniform(4)))]
        boton2.backgroundColor = colores[Int(arc4random_uniform(4))]
        
        
    }
    
    

    
    

    
    
}

