//
//  Drink.swift
//  VendingMachin
//
//  Created by Danb on 2017. 3. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class Drink {
    var brand : String
    var capacity : Int
    var price : Int
    var name : String
    
    init() {
        brand = ""
        capacity = 100
        price = 1000
        name = ""
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
