//
//  ViewController.swift
//  CircleImage11
//
//  Created by Sophia Lu on 5/25/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.layoutIfNeeded()
        
     imageView.layer.cornerRadius = imageView.frame.size.width / 2;
//          imageView.layer.cornerRadius = 30
        imageView.layer.masksToBounds = true
        imageView.layer.borderColor = UIColor.gray.cgColor
        imageView.layer.borderWidth = 4
        
    }

    @IBOutlet weak var imageView: UIImageView!
    
}

