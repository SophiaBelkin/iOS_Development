//
//  SecondViewController.swift
//  PassingData09
//
//  Created by Sophia Lu on 5/20/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

var sendMessage: String?

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(sendMessage ?? "default2");
     messageLabel?.text = sendMessage
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var messageLabel: UILabel!

}
