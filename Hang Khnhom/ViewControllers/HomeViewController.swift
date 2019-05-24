//
//  ViewController.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/14/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let images = ["background_1", "background_2", "background_3", "background_4", "background_5", "background_6"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        collectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "shopCell")

    }
    
    func setupView() {
    
    self.navigationController?.navigationBar.layer.masksToBounds = false
    self.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
    self.navigationController?.navigationBar.layer.shadowOpacity = 0.5
    self.navigationController?.navigationBar.layer.shadowOffset = .zero
    self.navigationController?.navigationBar.layer.shadowRadius = 6
       
    
    }
    


}

//MARK: Data source
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shopCell", for: indexPath) as! HomeCollectionViewCell
        
        cell.backgroundImage.image = UIImage(named: images[indexPath.row])
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize.init(width: collectionView.frame.size.width - 48, height: collectionView.frame.size.width + 40)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 16, left: 8, bottom: 16, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "shopDetail", sender: nil)
        
    }
    
}
