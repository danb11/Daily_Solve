//
//  main.swift
//  0315_p1
//
//  Created by Danb on 2017. 3. 15..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

//print("Hello, World!")

class CXPen {
    var brand : String
    var color : String
    var usage : Int
    
    init(withBrand : String) {
        brand = withBrand
        color = "Color"
        usage = 100
    }
    
    func getbrand() -> String {
        return brand
    }
    func getcolor() -> String {
        return color
    }
    func getusage() -> Int {
        return usage
    }
    
    func setBrand(_ setting : String) {
        brand = setting
    }
    func setColor(_ setting : String) {
        color = setting
    }
    func setUsage(_ setting : Int) {
        usage = setting
    }
    
    func printDescription() {
        print()
    }
    
}
