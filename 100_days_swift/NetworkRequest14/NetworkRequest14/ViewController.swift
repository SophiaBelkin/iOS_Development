//
//  ViewController.swift
//  NetworkRequest14
//
//  Created by Sophia Lu on 7/4/19.
//  Copyright © 2019 Sophia Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageComponent: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg")!

        // use "URLSession.shared" to access the shared URLSession. URLSession is a can manage network request on our behave
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            
            if error == nil {
                let downloadImage = UIImage(data: data!)
        
                DispatchQueue.main.async {
                    self.imageComponent.image = downloadImage

                }
            }
        }
        
        task.resume()
    }


}

