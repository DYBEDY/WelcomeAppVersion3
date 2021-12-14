//
//  WelcomeViewController.swift
//  HomeWork2.3
//
//  Created by Roman on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeTextLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    
    var welcomeText: String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradientForBackground()
        
        welcomeTextLabel.text = welcomeText
        
        emojiLabel.text = "\u{1f44b}"
        
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
    
// MARK: - gradient method

extension WelcomeViewController {
    
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

    
    
    
    

