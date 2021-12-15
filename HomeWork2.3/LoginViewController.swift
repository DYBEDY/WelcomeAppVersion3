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
    
    //    var keyName: UIReturnKeyType = .next
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradientForBackground()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        userNameTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done
        
        
        userNameTextField.tag = 0
        passwordTextField.tag = 1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreen = segue.destination as! WelcomeViewController
        welcomeScreen.welcomeText = "Welcome, \(userNameTextField.text ?? " ") !"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let _ = segue.source as! WelcomeViewController
        userNameTextField.text = nil
        passwordTextField.text = nil
        
    }
    
    
    @IBAction func loginButton() {
        guard (userNameTextField.text, passwordTextField.text) == (login, password) else {
            showAlert(title: "Ooops!", message: "Try again")
            userNameTextField.text = nil
            passwordTextField.text = nil
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
// MARK: - Alert method
extension LoginViewController {
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
            if let userName = self.userNameTextField.text {
                if userName.isEmpty {
                    self.userNameTextField.text = ""
                } else {
                    self.userNameTextField.text = userName
                }
            }
            if let password = self.passwordTextField.text {
                if password.isEmpty {
                    self.passwordTextField.text = ""
                } else {
                    self.passwordTextField.text = password
                }
            }
            
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
}

// MARK: - Gradient method

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

// MARK: - Keyboard

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches , with:event)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag = textField.tag + 1
        
        if let nextResponder = textField.superview?.viewWithTag(nextTag) {
            nextResponder.becomeFirstResponder()

        } else {
            textField.resignFirstResponder()
            loginButton()
        }
        
        return false
    }
    
}
    

    


    
    
    
    


    



