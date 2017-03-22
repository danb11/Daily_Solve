//
//  ViewController.swift
//  MyApple
//
//  Created by Danb on 2017. 3. 17..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //뷰의 화면요소를 outlet에 연결한다.
    @IBOutlet weak var appleIMG: UIImageView!
    
    @IBOutlet weak var appleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTouched(_ sender: UIButton) {
        appleIMG.isHighlighted = !appleIMG.isHighlighted
    }

}

