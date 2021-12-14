//
//  ViewController.swift
//  HomeWork2.3
//
//  Created by Roman on 14.12.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreen = segue.destination as! WelcomeViewController
        welcomeScreen.welcomeText = "Welcome, \(userNameTextField.text ?? " ") !" 
    }
    


    @IBAction func loginButton() {
        
    }
}

