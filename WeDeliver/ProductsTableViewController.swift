//
//  ProductsTableViewController.swift
//  WeDeliver
//
//  Created by Marcus Eagan on 1/16/17.
//  Copyright © 2017 Marcus Eagan. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        cell.textLabel?.text = "Hello friend."
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
}
