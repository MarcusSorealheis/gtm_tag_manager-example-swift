//
//  ProductViewController.swift
//  WeDeliver
//
//  Created by Marcus Eagan on 8/3/16.
//  Copyright © 2016 Marcus Eagan. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var productName: String?
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = productName
        productImageView.image = UIImage(named: "phone-fullscreen3")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    @IBAction func addToCartPressed(_ sender: AnyObject) -> Void {
        print("button tapped!")
    }
}
