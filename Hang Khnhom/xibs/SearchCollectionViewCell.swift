//
//  SearchCollectionViewCell.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/25/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var likeImagView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var backgroundImageVeiw: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        
        contentView.layer.cornerRadius = 6
        contentView.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 4
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = .zero
        
    }

}
