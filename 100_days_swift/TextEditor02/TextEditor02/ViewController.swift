//
//  ViewController.swift
//  TextEditor02
//
//  Created by Sophia Lu on 5/11/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mode = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.becomeFirstResponder()
        print("Night Mode setting is \(UserDefaults.standard.bool(forKey:"nightMode"))")

        //Add notification center to receive notification from the setting bundle
        NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    @objc func detectIfSettingsChanged() {
        mode = UserDefaults.standard.bool(forKey:"nightMode")
        
        if (mode) {
            view.backgroundColor = UIColor.black
            textView.textColor = UIColor.white
            
        } else {
            view.backgroundColor = UIColor.white
              textView.textColor = UIColor.black
        }
    }

    @IBOutlet weak var textView: UITextView!
    
}

