//
//  CollectionView2Cell.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 07/06/24.
//

import UIKit

class CollectionView2Cell: UICollectionViewCell {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var price: UILabel!
    @IBOutlet var baths: UILabel!
    @IBOutlet var address: UILabel!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           setupCell()
       }

       func setupCell() {
           self.contentView.layer.cornerRadius = 10
           self.contentView.layer.masksToBounds = true
           self.contentView.layer.borderColor = UIColor.lightGray.cgColor
           self.contentView.layer.borderWidth = 0.5
       }
}
