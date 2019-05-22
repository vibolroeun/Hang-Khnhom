//
//  NavigationGradient.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/15/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

@IBDesignable class NavigationView: UINavigationBar {
    
    @IBInspectable var gradientColor1: UIColor = UIColor.white {
        didSet {
            setGradientBackground()
        }
    }
    
    @IBInspectable var gradientColor2: UIColor = UIColor.white {
        didSet {
            setGradientBackground()
        }
    }
    
    @IBInspectable var gradientStartPoint: CGPoint = .zero {
        didSet {
            setGradientBackground()
        }
    }
    
    @IBInspectable var gradientEndPoint: CGPoint = CGPoint(x: 0, y: 1){
        didSet {
            setGradientBackground()
        }
    }

    
    private func setGradientBackground() {
        let gradient = CAGradientLayer()
        gradient.startPoint = gradientStartPoint
        gradient.endPoint = gradientEndPoint
        
        var updatedFrame: CGRect = self.bounds
        updatedFrame.size.height += 20
        gradient.frame = updatedFrame
        gradient.colors = [gradientColor1.cgColor, gradientColor2.cgColor]
        
        UINavigationBar.appearance().setBackgroundImage(self.image(fromLayer: gradient), for: UIBarMetrics.default)
    }
    
    private func image(fromLayer layer: CALayer) -> UIImage? {
        var outputImage: UIImage?

        UIGraphicsBeginImageContext(layer.frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            layer.render(in: context)
            outputImage = UIGraphicsGetImageFromCurrentImageContext()
        }
        
        UIGraphicsEndImageContext()
        return outputImage
    }
    
    
}
