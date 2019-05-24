//
//  SplashViewController.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/14/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var secondLable: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupAnimation()
    }
    
    func setupAnimation() {
    
        secondLable.alpha = 0.0
        self.logoImageView.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
        
        UIView.animate(withDuration: 0.3, delay: 1, options: .curveLinear, animations: {
            self.logoImageView.transform = .identity
            
        }) { (true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.logoImageView.transform = CGAffineTransform.init(translationX: 0, y: -90)
            }) { (true) in
                UIView.animate(withDuration: 1, animations: {
                    
                    self.secondLable.alpha = 1
                }) { (true) in
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                        self.performSegue(withIdentifier: "splashSegue", sender: nil)
                    })
                    
                }
            }
            
        }
    }

    func setupView() {
        secondLable.addCharacterSpacing(kernValue: 8)
    }

}
