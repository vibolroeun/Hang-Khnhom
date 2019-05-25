//
//  FavoriteCollectionViewCell.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/25/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class FavoriteCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.layer.cornerRadius = 4
        contentView.layer.cornerRadius = 6
        contentView.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero
        
    }

}
