//
//  Drink.swift
//  0316_p2-2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class Drink {
    var brand : String
    var capacity : Int
    var price : Int
    var name : String
    var expiredDate : Date
    
    init() {
        brand = ""
        capacity = 100
        price = 1000
        name = ""
        expiredDate = Date()
    }
    
    func getBrand() -> String {
        return brand
    }
    func getCapacity() -> Int {
        return capacity
    }
    func getPrice() -> Int {
        return price
    }
    func getName() -> String {
        return name
    }
   
    func setBrand(_ setting : String) {
        brand = setting
    }
    func setCapacity(_ setting : Int) {
        capacity = setting
    }
    func setPrice(_ setting : Int) {
        price = setting
    }
    func setname(_ setting : String) {
        name = setting
    }

}
class Cocacola : Drink {
    private var cafein : Bool
    init(iscafein : Bool) {
        cafein = iscafein
        super.init()
        setBrand("Cocacola")
        setPrice(1500)
        setCapacity(200)
    }
    
    func getcocafein() -> Bool {
        return cafein
    }
    
    func printCocacola() {
        print("Cafein is \(cafein)")
        printCocacola()
    }
}

class Coke : Cocacola {
    init() {
        super.init(iscafein: true)
        setname("Coke")
        
    }
}

class Coffee : Cocacola {
    init() {
        super.init(iscafein: true)
        setname("Coffee")
    }
}

class Juice : Cocacola {
    init() {
        super.init(iscafein: false)
        setname("Juice")
    }
}

class JinroHite : Drink {
    var color : Bool
    init(isColor : Bool) {
        color = isColor
        super.init()
        setBrand("JinroHite")
        setPrice(2000)
        setCapacity(500)
    }
    func getcolor() -> Bool {
        return color
    }
}

class Toktok: JinroHite {
    private var taste : String
    init() {
        taste = ""
        super.init(isColor: true)
        
    }
    func getTaste() -> String {
        return taste
    }
    func setTaste(_ settingTaste: String) {
        taste = settingTaste
    }
}

class Toktokpeach : Toktok {
    override init() {
        super.init()
        setname("ToktokPeach")
        setTaste("Peach")
        setPrice(2000)
        
    }
}

class Toktokpine : Toktok {
    override init() {
        super.init()
        setname("ToktokPine")
        setTaste("Pine")
        setPrice(2000)
    }
}


class Soju : JinroHite {
    init() {
        super.init(isColor: false)
        setname("Soju")
        setPrice(2500)
    }
}
