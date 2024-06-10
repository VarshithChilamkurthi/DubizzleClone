//
//  Collection1TableViewCell.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class Section3TableViewCell: UITableViewCell {

    @IBOutlet var collectionView2: UICollectionView!
    
    var section3Data: [Section3Data] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView2.dataSource = self
        collectionView2.delegate = self
        
        //data creation
        section3Data = [
            Section3Data(image: "3.1", price: "AED 20,000", baths: "1 Bed . 2 Baths", address: "Paradise Lakes B9, Paralalala."),
        Section3Data(image: "3.2", price: "AED 175,000", baths: "2 Bed . 3 Baths", address: "Paradise Lakes B9, Paralalala."),
        Section3Data(image: "3.3", price: "AED 50,000", baths: "3 Bed . 2 Baths", address: "Paradise Lakes B9, Paralalala."),
        Section3Data(image: "3.4", price: "AED 30,000", baths: "4 Bed . 2 Baths", address: "Paradise Lakes B9, Paralalala."),
        Section3Data(image: "3.5", price: "AED 600,000", baths: "5 Bed . 2 Baths", address: "Paradise Lakes B9, Paralalala.")]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension Section3TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section3Data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionView2Cell", for: indexPath) as! CollectionView2Cell
        cell.image.image = UIImage(named: section3Data[indexPath.row].image)
        cell.baths.text = section3Data[indexPath.row].baths
        cell.price.text = section3Data[indexPath.row].price
        cell.address.text = section3Data[indexPath.row].address
        
        return cell
    }
}
