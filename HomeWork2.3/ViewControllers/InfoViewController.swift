//
//  InfoViewController.swift
//  HomeWork2.3
//
//  Created by Roman on 18.12.2021.
//

import UIKit



class InfoViewController: UIViewController {
    
    var user: UserInfo!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradientForBackground()
        
}
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let resultVC = segue.destination as? ResultViewController {
           resultVC.user = user
       }
    }
   
}

// MARK: - Gradient method

extension InfoViewController {
    
    func applyGradientForBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemBlue.cgColor,
            UIColor.white.cgColor,
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
