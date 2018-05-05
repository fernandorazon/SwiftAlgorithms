//
//  ViewController.swift
//  FirebaseApp
//
//  Created by d182_fernando_r on 05/05/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class ViewController: UIViewController {
    
    //Una referencia hacia la base de datos
    var ref: DatabaseReference?
    
    //Hago aqui una subvista
    
    let formContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        //Permito constraints en esta vista
        view.translatesAutoresizingMaskIntoConstraints = false
        //Suavizo las esquinas con un radio de 5 pts
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        
        
        return view
    }()
    
    let registerButtom: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 232/255, green: 173/255, blue: 72/255, alpha: 1.0)
        //Permito los constraints
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitle("Registro", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn.layer.cornerRadius = 5
        btn.layer.masksToBounds = true
        
        //Agrego target al boton
        
        btn.addTarget(self, action: #selector(loginRegister), for: .touchUpInside)
        return btn
    }()
    
    let emailTextField: UITextField = {
        
        let tf = UITextField()
        tf.placeholder = "Correo Electronico"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
        
    }()
    
    let passwordTextField: UITextField = {

        let tf = UITextField()
        tf.placeholder = "Constraseña"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
        
    }()
    
    let formSegmentControl: UISegmentedControl = {
        let sg = UISegmentedControl(items: ["Login", "Register"])
        sg.translatesAutoresizingMaskIntoConstraints = false
        sg.selectedSegmentIndex = 1
        sg.tintColor = UIColor.white
        
        //Agrego funcionalidades al segmentos
        sg.addTarget(self, action: #selector(segmentedChanged), for: .valueChanged)
        
        return sg
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 30/255, green: 62/255, blue: 106/255, alpha: 1.0)
        
        setupLayout()
        
        ref = Database.database().reference()
    }
    
    //Agrego aqui la subvista a otra vista y agrego constraints de cada elemento de la vista
    func setupLayout(){
        view.addSubview(formContainerView)
        view.addSubview(registerButtom)
        view.addSubview(formSegmentControl)
        formContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        formContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        formContainerView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        //Setup Boton de registro
        registerButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButtom.topAnchor.constraint(equalTo: formContainerView.bottomAnchor, constant: 15).isActive = true
        registerButtom.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        registerButtom.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Agrego a la subvista los textfields
        formContainerView.addSubview(emailTextField)
        formContainerView.addSubview(passwordTextField)
        
        //TextFields SetUps
        
        emailTextField.leftAnchor.constraint(equalTo: formContainerView.leftAnchor, constant: 10).isActive = true
        emailTextField.topAnchor.constraint(equalTo: formContainerView.topAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        passwordTextField.leftAnchor.constraint(equalTo: formContainerView.leftAnchor, constant: 10).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        //Setup segmentControl
        
        formSegmentControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formSegmentControl.bottomAnchor.constraint(equalTo: formContainerView.topAnchor, constant: -15).isActive = true
        formSegmentControl.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        formSegmentControl.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
        
        
        
    }
    
    @objc func segmentedChanged(){
        
        let title = formSegmentControl.titleForSegment(at: formSegmentControl.selectedSegmentIndex)
        registerButtom.setTitle(title, for: .normal)
        
    }
    
    @objc func loginRegister(){
        if formSegmentControl.selectedSegmentIndex == 0 {
            loginUser()
        } else {
            registerUser()
        }
    }
    
    func loginUser() {
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if user != nil {
                    print("Usuario Autenticado")
                    let lc = LoginUIViewController()
                    self.navigationController?.pushViewController(lc, animated: true)
                } else {
                    if let error = error?.localizedDescription{
                        print("Error al iniciar sesion por firebase", error)
                    } else {
                        print("Tu eres el error")
                    }
                }
            }
        }
        
    }
    
    func registerUser(){
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if user != nil{
                    print("Se creo el usuario")
                    
                    let values = ["name": email]
                    
                    self.ref?.updateChildValues(values, withCompletionBlock: { (error, ref) in
                        if error != nil {
                            print("Error al insertar datos")
                            return
                        }
                        print("Dato guardado en la base de datos")
                    })
                    
                } else {
                    if let error = error?.localizedDescription{
                        print("Error al crear el usuario por Firebase ", error)
                    } else {
                        print("Tu eres el error")
                    }
                }
            }
        }
    }

}

