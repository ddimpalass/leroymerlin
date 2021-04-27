//
//  ProductCell.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var productCollectionName: UILabel!
    @IBOutlet weak var productCollection: UICollectionView!
    
    var products = Product.createProductList()
    
    override func awakeFromNib() {
        super.awakeFromNib()

        productCollection.delegate = self
        productCollection.dataSource = self
        
    }
}

// MARK: UICollectionView

extension ProductCell: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionProductCell", for: indexPath) as? ProductCollectionCell else { return UICollectionViewCell() }
        
        let product = products[indexPath.item]
        
        cell.configurator(productPrice: String(Int(product.productPrice)),
                          productImage: product.productImage,
                          productDescription: product.productDescription)

        return cell
    }
}

