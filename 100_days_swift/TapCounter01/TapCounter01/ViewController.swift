//
//  ViewController.swift
//  TapCounter01
//
//  Created by Sophia Lu on 5/11/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tapCount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var counterNumLabel: UILabel!
    
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        tapCount = 0
        print(tapCount)
        counterNumLabel.text = String(tapCount)
    }
    
    @IBAction func longPressTapBar(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    func increaseCount(){
        tapCount += 1
        print(tapCount)
        counterNumLabel.text = String(tapCount)
    }
    
    
    
}

