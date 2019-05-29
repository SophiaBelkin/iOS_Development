//
//  ViewController.swift
//  DateFormatter21
//
//  Created by Sophia Lu on 5/28/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var datePicker: UIDatePicker!
   
    
    @IBAction func setDate(_ sender: UIButton) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        let date = datePicker.date
        title = dateFormatter.string(from: date)
    }
}

