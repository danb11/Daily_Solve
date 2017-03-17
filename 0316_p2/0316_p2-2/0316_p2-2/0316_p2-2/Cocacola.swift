//
//  Cocacola.swift
//  0316_p2-2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation


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
