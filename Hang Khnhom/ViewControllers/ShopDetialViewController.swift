//
//  ShopDetialViewController.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/16/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class ShopDetialViewController: UIViewController {
    
    let images = ["background_1", "background_2", "background_3", "background_4", "background_5", "background_6"]
    let property_icon = ["plug", "wifi", "fork", "dinner-table"]
    let property_title = ["Plug", "Wifi", "Product", "Table"]
    
    
    @IBOutlet weak var propertyCollectionView: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "shop", bundle: nil), forCellWithReuseIdentifier: "shopDetailCell")
        
        propertyCollectionView.register(UINib(nibName: "property", bundle: nil), forCellWithReuseIdentifier: "propertyCell")
        view.sendSubviewToBack(backgroundImage)
    
    }
    
    @IBAction func backButtonPress(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}




extension ShopDetialViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionView {
            return images.count
        } else {
            return property_icon.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shopDetailCell", for: indexPath) as! ShopCollectionViewCell
            cell.imageView.image = UIImage(named: images[indexPath.row])

            
            return cell
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "propertyCell", for: indexPath) as! PropertyCollectionViewCell
            cell.propertyLabel.text = property_title[indexPath.row]
            cell.propertyImageView.image = UIImage(named: property_icon[indexPath.row])
            
            return cell
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.collectionView {
            
        } else {
            performSegue(withIdentifier: "propertySegue", sender: nil)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionView {
            return CGSize.init(width: 120, height: collectionView.frame.size.height - 16)
        } else {
            return CGSize.init(width: 72, height: propertyCollectionView.frame.size.height - 8)
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 8, bottom: 0, right: 8)
    }
    
    
}
