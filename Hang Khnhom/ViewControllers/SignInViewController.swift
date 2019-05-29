//
//  SignInViewController.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/27/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var viewContianer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    func setupView() {
        nextButton.layer.cornerRadius = nextButton.frame.height / 2
        viewContianer.layer.cornerRadius = viewContianer.frame.height / 2
        viewContianer.backgroundColor = UIColor.init(red: 236 / 255, green: 237 / 255, blue: 241 / 255, alpha: 1.0)
        
    }

    @IBAction func nextButtonPress(_ sender: Any) {
        
        performSegue(withIdentifier: "signInSegue", sender: nil)
    }
    
    @IBAction func socialButtonPress(_ sender: Any) {
        
    }
}
