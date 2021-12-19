//
//  ResultViewController.swift
//  HomeWork2.3
//
//  Created by Roman on 19.12.2021.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var firstFactLabel: UILabel!
    @IBOutlet var secondFactLabel: UILabel!
    @IBOutlet var thirdFactLabel: UILabel!
    @IBOutlet var fourthFactLabel: UILabel!
    @IBOutlet var fifthFactLabel: UILabel!
    
    var firstFact = ""
    var secondFact = ""
    var thirdFact = ""
    var fourthFact = ""
    var fifthFact = ""
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        applyGradientForBackground()
        
        firstFactLabel.text = firstFact
        secondFactLabel.text = secondFact
        thirdFactLabel.text = thirdFact
        fourthFactLabel.text = fourthFact
        fifthFactLabel.text = fifthFact
    }
}


// MARK: - Gradient method

extension ResultViewController {
    
    func applyGradientForBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.darkGray.cgColor,
            UIColor.gray.cgColor,
            UIColor.white.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
