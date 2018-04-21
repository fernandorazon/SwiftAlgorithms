//
//  ViewController.swift
//  thisProjectIsWhatFor
//
//  Created by d182_fernando_r on 20/04/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let url = "https://ioslab.herokuapp.com"
    
    @IBOutlet var usuario: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var loginbutton: UIButton!
    
    @IBAction func loginbuttonAcces(sender: Any){
        
       
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Network.currentUser { (data, response, error) in
            let resp = response as! HTTPURLResponse
            print(resp.statusCode)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

