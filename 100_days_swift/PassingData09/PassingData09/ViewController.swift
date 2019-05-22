//
//  ViewController.swift
//  PassingData09
//
//  Created by Sophia Lu on 5/19/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userInput?.becomeFirstResponder()
    }

    @IBOutlet weak var userInput: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        sendMessage = userInput?.text
    }
}

