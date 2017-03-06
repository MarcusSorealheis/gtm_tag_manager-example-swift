
//
//  ProductsTableViewController.swift
//  WeDeliver
//
//  Created by Marcus Eagan on 1/16/17.
//  Copyright © 2017 Marcus Eagan. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let p = product {
                productNameLabel.text = p.Name
                if let i = p.productImage {
                    productImageView.image = UIImage(named: i)
                }
            }
            
            
        }
}

