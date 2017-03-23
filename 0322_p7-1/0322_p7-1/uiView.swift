//
//  uiView.swift
//  0322_p7-1
//
//  Created by Danb on 2017. 3. 22..
//  Copyright © 2017년 Danb. All rights reserved.
//
import Foundation
import UIKit

class gView: UIView {
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
       context.saveGState()

       // let startColor = UIColor.cyan.cgColor
       // let endColor = UIColor.black.cgColor
        let startP = CGPoint(x: 0, y: 0)
        let endP = CGPoint(x:0 , y: self.frame.height)
        let colorArray = [UIColor.white.cgColor , UIColor.darkGray.cgColor]
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let location : [CGFloat] = [0.0 , 1.0]
        
        let gradient = CGGradient(colorsSpace: colorSpace, colors: colorArray as CFArray, locations: location)
        context.drawLinearGradient(gradient!, start: startP, end: endP, options: CGGradientDrawingOptions(rawValue: 0))
        
      // context.restoreGState()
    

            let aPath = UIBezierPath()
            
            aPath.move(to: CGPoint(x:20, y:50))
            
            aPath.addLine(to: CGPoint(x:300, y:50))
            
            //Keep using the method addLineToPoint until you get to the one where about to close the path
            
            aPath.close()
            
            //If you want to stroke it with a red color
            UIColor.red.set()
            aPath.stroke()
            //If you want to fill it as well
            aPath.fill()
        
        }
    func randomColor(context : CGContext) {
        var lineArray = [UIColor.red.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor, UIColor.magenta.cgColor]
        let ranColor = lineArray[Int(arc4random_uniform(4))]
        context.setStrokeColor(ranColor)
        print(ranColor)
    }

}

    



