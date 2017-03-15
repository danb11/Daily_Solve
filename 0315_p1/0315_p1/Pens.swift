//
//  Pens.swift
//  0315_p1
//
//  Created by Danb on 2017. 3. 15..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class CXPen : CustomStringConvertible {
    var brand : String
    fileprivate var color : String
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
        print("Brand: \(brand), Color: \(color), Usage \(usage)")
    }
    var description: String {
        return "CXPen description : brand =\(brand)"
    }
}


class CXMonamiPen : CXPen {
    var model : String
    init(withModel : String){
            model = withModel
        super.init(withBrand: "Monami")
    }
    func getmodel() -> String {
        return model
    }
    override func printDescription() {
        print("brand: \(brand), modelname: \(model)")
        super.printDescription()
    }
}



class CXSharpPen : CXPen {
    var model : String
    init(withModel : String) {
        model = withModel
        super.init(withBrand: "Sharp")
    }
}



class RedPen : CXMonamiPen {
    init() {
        super.init(withModel: "Monami")
        color = "Red"
    }
}

class BluePen : CXMonamiPen {
    init() {
        super.init(withModel: "Monami")
        color = "Blue"
    }
}

class BlackPen : CXMonamiPen {
    init() {
        super.init(withModel: "Monami")
        color = "Black"
    }
}
