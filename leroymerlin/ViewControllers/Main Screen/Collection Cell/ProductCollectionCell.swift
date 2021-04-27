//
//  ProductCollectionCell.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

class ProductCollectionCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    
    func configurator(productPrice: String, productImage: UIImage, productDescription: String){
        self.productPrice.text = productPrice
        self.productImage.image = productImage
        self.productDescription.text = productDescription
    }
}
