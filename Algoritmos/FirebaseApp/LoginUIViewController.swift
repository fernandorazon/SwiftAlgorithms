//
//  LoginUIViewController.swift
//  FirebaseApp
//
//  Created by d182_fernando_r on 05/05/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit
import Firebase

class LoginUIViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Salir", style: .plain, target: self, action: #selector(logoutUser))
        // Do any additional setup after loading the view.
    }

    
    @objc func logoutUser(){
        
        do {
            try Auth.auth().signOut()
            self.navigationController?.popViewController(animated: true)
        } catch  {
            print("Error")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
