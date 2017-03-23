//
//  Drink.swift
//  VendingMachin
//
//  Created by Danb on 2017. 3. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class Drink : NSObject, NSCoding {
    
// equatable 은 nscoding안에 들어있다.
    
//    public static func ==(lhs: Drink, rhs: Drink) -> Bool {
//        return lhs.name == rhs.name
//    }

    
    var brand : String
    var capacity : Int
    var price : Int
    var name : String
    
    override init() {
        brand = ""
        capacity = 100
        price = 1000
        name = ""
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(brand, forKey: "brand")
        aCoder.encode(capacity, forKey: "capacity")
        aCoder.encode(price, forKey: "price")
        aCoder.encode(name, forKey: "name")
    }
    
    required init(coder decoder: NSCoder) {
        brand = (decoder.decodeObject(forKey: "brand") as? String)!
        capacity = decoder.decodeInteger(forKey: "capacity")
        price = decoder.decodeInteger(forKey: "price")
        name = (decoder.decodeObject(forKey: "name") as? String)!
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
    
    func set_Brand(_ setting : String) {
        brand = setting
    }
    func set_Capacity(_ setting : Int) {
        capacity = setting
    }
    func set_Price(_ setting : Int) {
        price = setting
    }
    func set_Name(_ setting : String) {
        name = setting
    }
    
}
class Cocacola : Drink {
    private var cafein : Bool
    init(iscafein : Bool) {
        cafein = iscafein
        super.init()
        set_Brand("Cocacola")
        set_Price(1500)
        set_Capacity(200)
    }
    public override func encode(with aCoder: NSCoder) {
        aCoder.encode(cafein, forKey: "cafein")
        super.encode(with: aCoder)
    }
    
    required init(coder decoder: NSCoder) {
        cafein = decoder.decodeBool(forKey: "cafein")
        super.init(coder: decoder)
       // fatalError("init(coder:) has not been implemented")
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
        set_Name("Coke")
        
    }
    public override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
        //fatalError("init(coder:) has not been implemented")
    }
}

class Coffee : Cocacola {
    init() {
        super.init(iscafein: true)
        set_Name("Coffee")
    }
    public override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)

        //fatalError("init(coder:) has not been implemented")
    }
}

class Juice : Cocacola {
    init() {
        super.init(iscafein: false)
        set_Name("Juice")
    }
    
    public override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
       // fatalError("init(coder:) has not been implemented")
    }
}

class JinroHite : Drink {
    var color : Bool
    init(isColor : Bool) {
        color = isColor
        super.init()
        set_Brand("JinroHite")
        set_Price(2000)
        set_Capacity(500)
    }
    
    public override func encode(with aCoder: NSCoder) {
        aCoder.encode(color, forKey: "color")
        super.encode(with: aCoder)
    }
    
    required init(coder decoder: NSCoder) {
        color = decoder.decodeBool(forKey: "color") as Bool
        super.init(coder: decoder)
        //fatalError("init(coder:) has not been implemented")
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
    public override func encode(with aCoder: NSCoder) {
        aCoder.encode(taste, forKey: "taste")
        super.encode(with: aCoder)
    }
    
    required init(coder decoder: NSCoder) {
        taste = decoder.decodeObject(forKey: "taste") as! String
        super.init(coder: decoder)
       // fatalError("init(coder:) has not been implemented")
    }
    
    func getTaste() -> String {
        return taste
    }
    func set_Taste(_ settingTaste: String) {
        taste = settingTaste
    }
}

class Toktokpeach : Toktok {
    override init() {
        super.init()
        set_Name("ToktokPeach")
        set_Taste("Peach")
        set_Price(2000)
        
    }
    
    public override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
        //fatalError("init(coder:) has not been implemented")
    }
}

class Toktokpine : Toktok {
    override init() {
        super.init()
        set_Name("ToktokPine")
        set_Taste("Pine")
        set_Price(2000)
    }
    public override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)

        //fatalError("init(coder:) has not been implemented")
    }
}


class Soju : JinroHite {
    init() {
        super.init(isColor: false)
        set_Name("Soju")
        set_Price(2500)
    }
    
    public override func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
    }
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
       // fatalError("init(coder:) has not been implemented")
    }
}


/*
 예제 찾아본 것
 class Person: NSObject, NSCoding {
 let name: String
 let age: Int
 init(name: String, age: Int) {
 self.name = name
 self.age = age
 }
 required init(coder decoder: NSCoder) {
 self.name = decoder.decodeObject(forKey: "name") as? String ?? ""
 self.age = decoder.decodeInteger(forKey: "age")
 }
 
 func encode(with coder: NSCoder) {
 coder.encode(name, forKey: "name")
 coder.encode(age, forKey: "age")
 }
 }
*/
