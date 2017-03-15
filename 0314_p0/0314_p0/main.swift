//
//  main.swift
//  0314
//
//  Created by Danb on 2017. 3. 14..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

print("Hello, World!")


struct MyRect {
    var pointA : CGPoint
    var pointB : CGPoint
    var pointC : CGPoint
    var pointD : CGPoint
    
    init() {
        pointA = CGPoint(x: 0, y: 0)
        pointB = CGPoint(x: 0, y: 0)
        pointC = CGPoint(x: 0, y: 0)
        pointD = CGPoint(x: 0, y: 0)
    }
    
    init(origin : CGPoint, width :CGFloat, height : CGFloat) {
        pointA = CGPoint(x:origin.x, y: height+origin.y)
        pointB = origin
        pointC = CGPoint(x:width+origin.x, y: origin.y)
        pointD = CGPoint(x:origin.x+height, y: origin.y+width)
    }
    
    mutating func moveTo(delta : CGPoint) {
        pointA = CGPoint(x:pointA.x+delta.x, y:pointA.y+delta.y)
        pointB = CGPoint(x:pointB.x+delta.x, y:pointB.y+delta.y)
        pointC = CGPoint(x:pointC.x+delta.x, y:pointC.y+delta.y)
        pointD = CGPoint(x:pointD.x+delta.x, y:pointD.y+delta.y)


    }

}


var rect1 = MyRect()
print(rect1)

var rect2 = MyRect.init(origin: CGPoint(x:0,y:0), width: 10, height: 5)


rect2.moveTo(delta: CGPoint(x: -3, y: 1.5))

print(rect2)



//MyRect.init(pointA: CGPoint(x:0,y:0), pointB: CGPoint(x:0,y:0), pointC: CGPoint(x:0,y:0), pointD: CGPoint(x:0,y:0))


/*
rect1.pointA = CGPoint(x: 4.5, y: 10.5)
rect1.pointB = CGPoint(x: 4.5, y: 3.5)
rect1.pointC = CGPoint(x: 15.0, y: 3.5)
rect1.pointD = CGPoint(x: 15.0, y: 10.5)

*/


/*

func makeBox () -> Double {
    let x = rect1.pointC.x - rect1.pointB.x
    let y = rect1.pointA.y - rect1.pointB.

    var box = x*y
    return Double(box)
}

print(makeBox())

 */
