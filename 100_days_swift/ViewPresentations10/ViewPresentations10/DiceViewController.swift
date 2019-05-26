//
//  DiceViewController.swift
//  ViewPresentations10
//
//  Created by Sophia Lu on 5/25/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit


class DiceViewController: UIViewController {
    var firstValue:String?
    var secondValue:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(firstValue ?? "firstValue")
        print(secondValue ?? "secondValue")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
