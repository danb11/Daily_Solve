//
//  main.swift
//  0322_achive
//
//  Created by Danb on 2017. 3. 22..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

print("Hello, World!")

let drinkA = Drink()


var savedata = NSKeyedArchiver.archivedData(withRootObject: drinkA)
var dataload = NSKeyedUnarchiver.unarchiveObject(with: savedata) as! Drink

print(dataload.price)
