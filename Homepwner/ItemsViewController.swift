//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by norains on 2019/9/16.
//  Copyright © 2019 norains. All rights reserved.
//

import UIKit

class ItemViewController: UITableViewController
{
    var itemStore: ItemStore!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //let cell = UITableViewCell(style: .value1,reuseIdentifier: "UITableViewCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
}
