//
//  NewGroceryViewController.swift
//  GroceryList12
//
//  Created by Sophia Lu on 5/28/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class NewGroceryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textView?.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textView: UITextView!
    
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        if textView.text.count > 0 {
              model.data.append(textView.text)
        }
      
        let _ = navigationController?.popToRootViewController(animated: true)
    }
    
}
