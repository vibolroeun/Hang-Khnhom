//
//  DynamicHeightCollectionView.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/29/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class DynamicHeightCollectionView: UICollectionView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize) {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return contentSize
    }
    
}
