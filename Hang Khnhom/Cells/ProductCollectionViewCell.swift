//
//  ProductCollectionViewCell.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/29/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    
    
    @IBOutlet weak var priceViewContainer: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        priceViewContainer.layer.cornerRadius = priceViewContainer.frame.height / 2
        productImageView.layer.cornerRadius = 6
        
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowRadius = 2
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero
    
        
    }

}
