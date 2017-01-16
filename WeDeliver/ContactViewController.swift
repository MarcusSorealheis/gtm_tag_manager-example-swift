//
//  ContactViewController.swift
//  WeDeliver
//
//  Created by Marcus Eagan on 8/7/16.
//  Copyright © 2016 Marcus Eagan. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }

    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }

}
