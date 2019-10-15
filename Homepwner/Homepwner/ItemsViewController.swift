//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Cody Mudrack on 10/15/19.
//  Copyright © 2019 Cody Mudrack. All rights reserved.
//

import Foundation
import UIKit

class ItemsViewController: UITableViewController {
    var store = ItemStore()
    
    // Mark: - UITableViewDataSource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return store.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RightDetail", for: indexPath)
        cell.textLabel?.text = store.items[indexPath.row].name
        cell.detailTextLabel?.text = "\(store.items[indexPath.row].valueInDollars)"
        
        return cell
    }
}
