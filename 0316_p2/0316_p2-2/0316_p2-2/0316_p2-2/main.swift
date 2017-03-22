//
//  main.swift
//  0316_p2-2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

print("Hello, World!")


var machine = VendingMachine()

let coke = Coke()
let coffee = Coffee()
let orangeJuice = Juice()
let peachTok = Toktokpeach()
let pineTok = Toktokpine()
let soju = Soju()


machine.addDrink(drink: coke, count: 5)
machine.addDrink(drink: coffee, count: 3)
machine.addDrink(drink: orangeJuice, count: 1)
machine.addDrink(drink: peachTok, count: 2)
machine.addDrink(drink: pineTok, count: 5)
machine.addDrink(drink: soju, count: 1)

var all = machine.allstock
print(all)





// var drink = Drink()


//drink.getBrand()
