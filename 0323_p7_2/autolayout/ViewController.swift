//
//  ViewController.swift
//  autolayout
//
//  Created by Danb on 2017. 3. 23..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func blueSplit(_ sender: UIPanGestureRecognizer) {
        //let splitCenter = sender.view?.center.y
        let movelocation = sender.location(in: self.view)
        //print(translation)
                //sender.view.
        
        pinkHeight.constant = movelocation.y
        
       // sender.view?.center = CGPoint(x: sender.view!.center.x, y: sender.view!.center.y + translation.y)
 
        /*if sender.view?.center != sender.view?.center {
            
        }*/
        //let aa = CGPoint(x:translation.x , y:translation.y)
        //sender.setTranslation(aa, in: self.view)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }


}

