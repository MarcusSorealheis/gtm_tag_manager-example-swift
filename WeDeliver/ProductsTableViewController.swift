//
//  ProductViewController.swift
//  WeDeliver
//
//  Created by Marcus Eagan on 8/3/16.
//  Copyright © 2016 Marcus Eagan. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var products: [Product]?
    ß
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set";
        product1.productImage = "#imageLiteral(resourceName: "phone-fullscreen1")"
        product1.cellImage = "image-cell1"
        
        product1.name = "1921 Dial Phone"
        product1.productImage = "#imageLiteral(resourceName: "phone-fullscreen2")"
        product1.cellImage = "image-cell2"
        
        product1.name = "1937 Desk Set"
        product1.productImage = "#imageLiteral(resourceName: "phone-fullscreen3")"
        product1.cellImage = "image-cell3"
        
        product1.name = "1984 Motorola Phone"
        product1.productImage = "#imageLiteral(resourceName: "phone-fullscreen4")"
        product1.cellImage = "image-cell4"
        
        
        products = [product1, product2, product3, product4]
        
        // Do any additional setup after loading the view.
        productNameLabel.text = productName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int {
            if let p = products {
                return p.count
            }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell")
        
        let product = products?[indexPath.row]
        
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: p.cellImage)
            }
            
        }
       
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
            productVC?.product = products?[indexPath.row]
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func addToCartPressed(_ sender: AnyObject) -> Void {
        print("button tapped!")
    }
}
