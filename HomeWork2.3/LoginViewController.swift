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
    
    let login = "Champion"
    let password = "qwerty"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradientForBackground()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreen = segue.destination as! WelcomeViewController
        welcomeScreen.welcomeText = "Welcome, \(userNameTextField.text ?? " ") !"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let _ = segue.source as! WelcomeViewController
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }


    @IBAction func loginButton() {
        guard (userNameTextField.text, passwordTextField.text) == (login, password) else {
            showAlert(title: "Ooops!", message: "Incorrect login or password \u{1F61E}")
            
            return
        }
    }
    
    @IBAction func recoverNameButton() {
        showAlert(title: "Ooops!", message: "Your name is \"\(login)\" \u{1F448} ")
    }
    
    
    @IBAction func recoverPasswordButton() {
        showAlert(title: "Ooops!", message: "Your password is \" \(password)\" \u{1F448} ")
    }
    
 
    
}
    // MARK: - private methods
    
extension LoginViewController {
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
}
        
// MARK: - gradient method

extension LoginViewController {
    
    func applyGradientForBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemBlue.cgColor,
            UIColor.white.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    
    
    
}



    



