//
//  Gradient.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/15/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

@IBDesignable class DesignbleView: UIView {
    
    @IBInspectable var gradientColor1: UIColor = UIColor.white {
        didSet {
            setGradient()
        }
    }
    
    @IBInspectable var gradientColor2: UIColor = UIColor.white {
        didSet {
            setGradient()
        }
    }
    
    @IBInspectable var gradientStartPoint: CGPoint = .zero {
        didSet {
            setGradient()
        }
    }
    
    @IBInspectable var gradientEndPoint: CGPoint = CGPoint(x: 0, y: 1){
        didSet {
            setGradient()
        }
    }
    
    
    private func setGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [gradientColor1.cgColor, gradientColor2.cgColor]
        gradientLayer.startPoint = gradientStartPoint
        gradientLayer.endPoint = gradientEndPoint
        gradientLayer.frame = self.bounds
        if let topLayer = self.layer.sublayers?.first, topLayer is CAGradientLayer {
            topLayer.removeFromSuperlayer()
        }
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}

