//
//  ViewController.swift
//  dateAndTimeDisplay05
//
//  Created by Sophia Lu on 5/14/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getTimeAndDate()
    }

    @IBOutlet weak var showTimeAndDate: UILabel!
    
    @IBAction func refreshTImeAndDate(_ sender: UIButton) {
        
        getTimeAndDate()
    }
    
    func getTimeAndDate(){
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        showTimeAndDate.text = format.string(from: date)
    }
}

