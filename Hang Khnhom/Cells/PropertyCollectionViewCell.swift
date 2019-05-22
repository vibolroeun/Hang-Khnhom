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
        
        contentView.layer.cornerRadius = 6
        contentView.layer.masksToBounds = true
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.init(red: 10 / 255, green: 36 / 255, blue: 99 / 255, alpha: 0.5).cgColor
        

    }
    
}
