//
//  VendingMachine'.swift
//  0316_p2-2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class VendingMachine {
    
    var items : [String:Int]
    init() {
        items = ["":0]
    }
    
    func addDrink(additem : Drink) {
        items.updateValue(1, forKey: "")
    }
    
    func samePrice (price:Int) -> Array<String> {
        var sameprice = [String]()
        
        return sameprice
    }
    
    func add(additem : Drink) {
        
    }
    func printadd (){
        
    }
    
    
}

