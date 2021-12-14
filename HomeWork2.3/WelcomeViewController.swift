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
        
        welcomeTextLabel.text = welcomeText
        
        emojiLabel.text = "\u{1f44b}"
        
    }
    
  
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
    
    
    
}
