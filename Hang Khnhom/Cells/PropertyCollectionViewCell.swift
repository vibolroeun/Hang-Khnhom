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
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(red: 199 / 255, green: 202 / 255, blue: 209 / 255, alpha: 1).cgColor
        

    }
    
}
