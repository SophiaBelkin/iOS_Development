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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareImagePicker()
        prepareTextFields()
    }
    
    // Mark: Sign up to be notified when the keyboard appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        subscribeToKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        unsubscribeFromKeyboardNotifications()
    }
    

    @IBOutlet weak var bottomToolbar: UIToolbar!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func pickAnImage(_ sender: UIBarButtonItem) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func pickImageWithCamera(_ sender: UIBarButtonItem) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func launchActivityView(_ sender: UIBarButtonItem) {
        let img = generateMemedImage()
        let items = [img]
        let ac = UIActivityViewController(activityItems: items as [Any], applicationActivities: nil)
        present(ac, animated: true)
    }
    
    
    @IBAction func resetPhotoAndText(_ sender: UIBarButtonItem) {
        imageView.image = UIImage(named: "defaultImg")
        topTextField.text = "TOP"
        bottomTextField.text = "BOTTOM"
    }
    
    
    func prepareImagePicker() {
        imagePicker.delegate = self
        //Disable camera button for phones has no camera
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    func prepareTextFields() {
        let memeTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 46)!,
            .strokeColor : UIColor.black,
            .foregroundColor : UIColor.white,
            .strokeWidth : -2.0
        ]
        
        topTextField.defaultTextAttributes = memeTextAttributes
        bottomTextField.defaultTextAttributes = memeTextAttributes
        
        topTextField.text = "TOP"
        bottomTextField.text = "BOTTOM"
        
        topTextField.textAlignment = .center
        bottomTextField.textAlignment = .center
        topTextField.delegate = self
        bottomTextField.delegate = self
    }

 
    func subscribeToKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
             NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func unsubscribeFromKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)

    }
    
    // When the keyboardWillShow notification is received, shift the view's frame up
    @objc func keyboardWillShow(_ notification:Notification) {
        if bottomTextField.isEditing {
            view.frame.origin.y -= getKeyboardHeight(notification)
        }
    }
    
    @objc func keyboardWillHide(_ notification:Notification) {
        view.frame.origin.y = 0
    }
    
    func getKeyboardHeight(_ notification:Notification) -> CGFloat {
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue // of CGRect
        return keyboardSize.cgRectValue.height
    }
    
    // Mark: UIImagePickerControllerDelegate methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        dismiss(animated:true, completion: nil)
    }
    
    // Mark: UITextFieldDelegate delegate methods
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == "TOP" || textField.text == "BOTTOM" {
            textField.text = ""
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func save() {
        // Create the meme
//        let meme = Meme(topText: topTextField.text!, bottomText: bottomTextField.text!, originalImage: imageView.image!, memedImage: memedImage)
    }
    
    func generateMemedImage() -> UIImage {
        // Hide toolbar and navbar
       self.navigationController?.setNavigationBarHidden(true, animated: false)
       bottomToolbar.isHidden = true
        
        // Render view to an image
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let memedImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        // Show toolbar and navbar
       self.navigationController?.setNavigationBarHidden(false, animated: false)
        bottomToolbar.isHidden = false
        
        return memedImage
    }
}

