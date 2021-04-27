//
//  MainScreen.swift
//  leroymerlin
//
//  Created by Apple on 22.04.2021.
//

import UIKit

class MainScreen: UIViewController {
    @IBOutlet weak var customNavigationBar: CustomNavigationBar!
    @IBOutlet weak var tableView: UITableView!
    
    private var products: [Product] = []

    let secondaryColor = UIColor.white

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        products = Product.createProductList()
    }
}

// MARK: UITableView

extension MainScreen: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCategoryCell", for: indexPath) as? CategoryCell else { return UITableViewCell() }
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableProductCell", for: indexPath) as? ProductCell else { return UITableViewCell() }
        switch indexPath.row {
        case 0:
            cell.productCollectionName.text = "Недавно просмотренные"
        case 1:
            cell.productCollectionName.text = "Предложение ограничено"
        case 2:
            cell.productCollectionName.text = "Лучшая цена"
        default:
            cell.productCollectionName.text = ""
        }
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
}


