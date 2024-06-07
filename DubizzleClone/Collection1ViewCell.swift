//
//  Collection1ViewCell.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class Collection1ViewCell: UICollectionViewCell {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    
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
