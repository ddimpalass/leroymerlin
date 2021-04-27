//
//  CategoryCollectionCell.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

class CategoryCollectionCell: UICollectionViewCell {
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var catalogButton: UIButton!
    
    func configurator(categoryName: String, categoryImage: UIImage, id: Int){
        self.categoryName.text = categoryName
        self.categoryImage.image = categoryImage
        
        self.categoryView.layer.cornerRadius = 5
        
        catalogButton.isHidden = true
        catalogButton.tintColor = .white
        
        if id == 0 {
            categoryView.backgroundColor = UIColor(named: "MainColor")
            self.categoryName.textColor = .white
            self.categoryImage.isHidden = true
            catalogButton.isHidden = false
        } else if id == categoryName.count - 1 {
            self.categoryImage.isHidden = true
        }
    }
}
