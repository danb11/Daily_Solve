//
//  FirstViewController.swift
//  0323_8_1
//
//  Created by Danb on 2017. 3. 23..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var pickImage: UIImageView!
    
    @IBAction func camerapicker(_ sender: Any) {
        let camerapick = UIImagePickerController()
        camerapick.delegate = self
        camerapick.sourceType = .camera
        present(camerapick, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let img = info[UIImagePickerControllerOriginalImage] {
            pickImage.image = img as! UIImage
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

