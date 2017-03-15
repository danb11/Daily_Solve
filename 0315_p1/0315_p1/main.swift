//
//  main.swift
//  0315_p1
//
//  Created by Danb on 2017. 3. 15..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

//print("Hello, World!")

var pen0 = CXPen(withBrand: "")


var pen1 = RedPen()
var pen2 = RedPen()
var pen3 = BluePen()
var pen4 = BluePen()
var pen5 = BluePen()
var pen6 = BlackPen()
var pen7 = BlackPen()



var all = PenHolder(withCapacity : 5)

all.add(pen: pen1)
all.add(pen: pen3)

//pen5.printDescription()

var monami = CXMonamiPen(withModel : "Limited Edition")

monami.printDescription()




var all1 = allFiles(atPath: "/Users/danb/dan")

print(all1)


/*
var pen1 = RedPen()
var pen2 = RedPen.init()
var pen3 = BluePen.init()
var pen4 = BluePen.init()
var pen5 = BluePen.init()
var pen6 = BluePen.init()
var pen7 = BlackPen.init()
var pen8 = BlackPen.init()
var pen9 = BlackPen.init()
var pen10 = BlackPen.init()

 
 

//pen1.printDescription()



 */
