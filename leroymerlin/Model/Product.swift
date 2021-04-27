//
//  Product.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

struct Product: Identifiable {
    let id: Int
    let productDescription: String
    let productPrice: Double
    let productImage: UIImage
    
    static func createProductList() -> [Product] {
        var products: [Product] = []
        
        for index in 0..<DataManager.shared.productDescription.count {
            products.append(Product(id: index,
                                    productDescription: DataManager.shared.productDescription[index],
                                    productPrice: DataManager.shared.productPrice[index],
                                    productImage: (UIImage(named: "Product \(index + 1)") ?? UIImage(systemName: "nosign"))!)
            )
        }
        
        return products.shuffled()
    }
}
