//
//  Collection1TableViewCell.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class Section1TableViewCell: UITableViewCell {

    @IBOutlet var collectionView1: UICollectionView!
    
    var section1Data: [Section1Data] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView1.dataSource = self
        collectionView1.delegate = self
        
        //data creation
        section1Data = [
        Section1Data(image: "1", label: "Property for Rent"),
        Section1Data(image: "2", label: "Property for Sale"),
        Section1Data(image: "3", label: "Off-Plan Properties"),
        Section1Data(image: "4", label: "Rooms for Rent"),
        Section1Data(image: "5", label: "Motors"),
        Section1Data(image: "6", label: "Jobs"),
        Section1Data(image: "7", label: "Classifieds"),
        Section1Data(image: "8", label: "Furniture & Garden"),
        Section1Data(image: "9", label: "Community")]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension Section1TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section1Data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection1ViewCell", for: indexPath) as! Collection1ViewCell
        cell.image.image = UIImage(named: section1Data[indexPath.row].image)
        cell.label.text = section1Data[indexPath.row].label
        
        return cell
    }
}
