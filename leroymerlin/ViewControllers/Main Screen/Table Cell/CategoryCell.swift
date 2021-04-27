//
//  CategoryCell.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryCollection: UICollectionView!
    
    var categoryArray = Category.createCategoryList()
    
    override func awakeFromNib() {
        super.awakeFromNib()

        categoryCollection.delegate = self
        categoryCollection.dataSource = self

    }
}

// MARK: UICollectionView

extension CategoryCell: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCategoryCell", for: indexPath) as? CategoryCollectionCell else { return UICollectionViewCell() }
        
        let category = categoryArray[indexPath.item]

        cell.configurator(categoryName: category.categoryName,
                          categoryImage: category.categoryImage,
                          id: category.id)
        
        return cell
    }
}
