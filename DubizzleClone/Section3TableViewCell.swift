//
//  Collection1TableViewCell.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class Section3TableViewCell: UITableViewCell {

    @IBOutlet var collectionView2: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView2.dataSource = self
        collectionView2.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension Section3TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionView2Cell", for: indexPath) as! CollectionView2Cell
        cell.image.image = UIImage(systemName: "photo")
        cell.baths.text = "1 bed"
        cell.price.text = "123"
        cell.address.text = "abc"
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 160, height: 160)
//    }
}
