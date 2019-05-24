//
//  PropertyCollectionViewCell.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/20/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class PropertyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var propertyLabel: UILabel!
    @IBOutlet weak var propertyImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 4
        contentView.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = .zero
        

    }
    
}
