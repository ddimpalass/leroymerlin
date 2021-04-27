//
//  Category.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

struct Category: Identifiable {
    let id: Int
    let categoryName: String
    let categoryImage: UIImage
    
    
    static func createCategoryList() -> [Category] {
        var category: [Category] = []
        
        for index in 0..<DataManager.shared.categoryName.count {
            category.append(Category(id: index,
                                     categoryName: DataManager.shared.categoryName[index],
                                     categoryImage: (UIImage(named: "Category \(index)") ?? UIImage(systemName: "nosign"))!)
            )
        }
        
        return category
    }
}

