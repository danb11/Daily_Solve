//
//  SecondViewController.swift
//  0317_p3
//
//  Created by Danb on 2017. 3. 17..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var beganPoint:Double = Double()
    
    @IBOutlet var bg: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first {
            beganPoint = Double(touch.location(in: view).y)
            
        }
        //self.view.alpha = 1.0
       // print(touches)
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        if let touch = touches.first {
            let currentPoint = touch.location(in: bg)
            var currentY = Double(currentPoint.y)
            var moved = Int(beganPoint-currentY)
            if moved % 3 == 0 {
                self.view.alpha -= 0.01
            }
            
        }
       // bg.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
       // print(touches)

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        if let touch = touches.first {
            let currentPoint = touch.location(in: bg)
            // do something with your currentPoint
        }
        self.view.alpha = 1.0
    }
   // self.bg.alpha = 0

    
    /*
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 5, delay: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            self.bg.alpha = 1
        }, completion: nil)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 5, delay: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            self.bg.alpha = 0
        }, completion: nil)
    }
 */

}

