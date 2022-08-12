//
//  MainViewController.swift
//  Xcode14Beta5TitleViewBug
//
//  Created by trickart on 2022/08/12.
//

import UIKit

class MainViewController: UITableViewController {
    let list = ["Alpha", "Bravo", "Charlie", "Delta", "Echo"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = list[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let subVC = SubViewController()
        subVC.title = list[indexPath.row]
        subVC.subTitle = "detail view controller"
        navigationController?.pushViewController(subVC, animated: true)
    }
}
