//
//  Collection1TableViewCell.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class Section1TableViewCell: UITableViewCell {

    @IBOutlet var collectionView1: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView1.dataSource = self
        collectionView1.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension Section1TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection1ViewCell", for: indexPath) as! Collection1ViewCell
        cell.image.image = UIImage(systemName: "paperplane")
        cell.label.text = "Hi"
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 118, height: 118)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}
