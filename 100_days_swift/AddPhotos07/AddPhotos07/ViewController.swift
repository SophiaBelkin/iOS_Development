//
//  ViewController.swift
//  AddPhotos07
//
//  Created by Sophia Lu on 5/19/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func addImageButton(_ sender: UIBarButtonItem) {
        
        let imagePicker = UIImagePickerController()
        
        present(imagePicker, animated: true, completion: nil)
        imagePicker.delegate = self //tell the image picker to communication the body of the code
    }
    
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        <#code#>
        imageView.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        dismiss(animated:true, completion: nil)
    }
    
}

