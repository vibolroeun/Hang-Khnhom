//
//  productShopCollectionViewCell.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/30/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class productShopCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceContinerView: UIView!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var bestLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        priceContinerView.layer.cornerRadius = priceContinerView.frame.height / 2
        bestLabel.layer.cornerRadius = 2
        bestLabel.layer.masksToBounds = true
        imageView.layer.cornerRadius = 6
        
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowRadius = 2
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero
        
        
    }

}
