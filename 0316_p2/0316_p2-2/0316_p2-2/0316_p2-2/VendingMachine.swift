//
//  VendingMachine'.swift
//  0316_p2-2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class VendingMachine {
    
    var allstock = [String : [Drink]]()
    var drinkset = [Drink]()
    var money = Int()
    
    
    // 특정 음료를 추가
    func addDrink(drink : Drink, count : Int) {
        let drinkName = drink.getName()
        var drinkArray = [Drink]()
        for _ in 1...count {
            drinkArray.append(drink)
        }
        drinkset.append(drink)
        allstock[drinkName] = drinkArray
    }
    
    //전체 음료 재고 -> 종류별로 리턴
    func stockList() {
    }
    
    // 금액 입력 -> 구매 가능한 음료 목록
    func availabeCan(availablelist : Int) ->Array<String> {
        var canlist = [String]()
        
        return canlist
    }
    
    func printadd() {
        
    }
    
    
    
}

