//
//  ViewController.swift
//  Meme
//
//  Created by Sophia Lu on 5/22/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UIImagePickerControllerDelegate, UINavigationControllerDelegate,
UITextFieldDelegate {
    let imagePicker = UIImagePickerController()
    
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 46)!,
         .strokeColor : UIColor.black,
        .foregroundColor : UIColor.white,
        .strokeWidth : -2.0
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        topTextField.defaultTextAttributes = memeTextAttributes
        bottomTextField.defaultTextAttributes = memeTextAttributes
        
        topTextField.textAlignment = .center
        bottomTextField.textAlignment = .center
        
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }

    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func pickAnImage(_ sender: UIBarButtonItem) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        dismiss(animated:true, completion: nil)
    }
    
    
    @IBAction func pickImageWithCamera(_ sender: UIBarButtonItem) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func launchActivityView(_ sender: UIBarButtonItem) {
        let items = [imageView.image]
        let ac = UIActivityViewController(activityItems: items as [Any], applicationActivities: nil)
        present(ac, animated: true)
        
    }
}

