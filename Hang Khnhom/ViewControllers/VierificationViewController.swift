//
//  VierificationViewController.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/28/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class VierificationViewController: UIViewController {
    

    @IBOutlet var verificationText: [UIView]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    func setupUI() {
    
        for view in verificationText {
            view.layer.cornerRadius = view.frame.width / 2
        }
    
    }

    @IBAction func resentButtonPressed(_ sender: Any) {
        
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
