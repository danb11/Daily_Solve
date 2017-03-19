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
    func getDate() -> Date {
        return expiredDate
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
    func setDate(_ setting : Date) {
        expiredDate = setting
    }
    

}



/*
var drinking = Drink()
var capacity2 = drinking.capacity
var name2 = drinking.name

func checkcapacity(additem : Drink) {
    var dic = [capacity2:name2]
    dic.updateValue(additem.name, forKey: drinking.capacity)

}

*/
