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
    let property_icon = ["plug", "wifi", "dinner-table"]
    let property_title = ["Plug", "Wifi", "Table"]
    
    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var propertyCollectionView: UICollectionView!
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        propertyCollectionView.register(UINib(nibName: "property", bundle: nil), forCellWithReuseIdentifier: "propertyCell")
        
        productCollectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "productCell")
        
        view.sendSubviewToBack(backgroundImage)
        setUpView()
    
    }
    
    func setUpView() {
        bookButton.layer.cornerRadius = bookButton.frame.height / 2
        bookButton.layer.shadowOffset = .zero
        bookButton.layer.shadowOpacity = 0.5
        bookButton.layer.shadowRadius = 2
        bookButton.layer.shadowColor = UIColor.gray.cgColor
    
    }
    
    @IBAction func backButtonPress(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func bookButtonPressed(_ sender: Any) {
    
    }
    
    @IBAction func viewAllButtonPressed(_ sender: Any) {
        
    }
}




extension ShopDetialViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.propertyCollectionView{
            return property_icon.count
        } else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    if collectionView == self.propertyCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "propertyCell", for: indexPath) as! PropertyCollectionViewCell
            cell.propertyLabel.text = property_title[indexPath.row]
            cell.propertyImageView.image = UIImage(named: property_icon[indexPath.row])
            
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCollectionViewCell
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.propertyCollectionView {
            
        } else {
            performSegue(withIdentifier: "propertySegue", sender: nil)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.propertyCollectionView {
            return CGSize.init(width: 72, height: propertyCollectionView.frame.size.height - 8)
        } else {
            return CGSize.init(width: productCollectionView.frame.width - 16, height: 110)
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 4, left: 8, bottom: 4, right: 8)
    }
    
    
}
