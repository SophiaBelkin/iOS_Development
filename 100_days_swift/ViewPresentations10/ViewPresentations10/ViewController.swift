//
//  ViewController.swift
//  ViewPresentations10
//
//  Created by Sophia Lu on 5/25/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

//UINavigationControllerDelegate is required when setting this as the delegate for the UIImagePickerController.
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func launchImageView(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func launchActivityView(_ sender: Any) {
        let items = [UIImage()]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    
    }
    
    
    @IBAction func launchAleryView(_ sender: UIButton) {
        let alert = UIAlertController()
        
        alert.title = "Did you bring your book?"
        alert.message = "It's recommended you bring your towel before continuing."
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        present(alert, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showView" {
            let controller = segue.destination as! DiceViewController
            
            controller.firstValue = "hello"
            controller.secondValue = "Sophia"
        }
    }
    
//    @IBAction func presentViewControler(_ sender: UIButton) {
//        let Dice = DiceViewController()
//        present(Dice, animated: true)
//        
////        self.performSegue(withIdentifier: "showView", sender: self)
//    }
    
}

