//
//  pp.swift
//  0315_p1
//
//  Created by Danb on 2017. 3. 15..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation


class PenHolder {
    private var pens : [CXPen]
    private let maxCapacity : Int
    
    
    init(withCapacity : Int) {
        maxCapacity = withCapacity
        pens = []
    }
    
    func add(pen : CXPen) {
        pens.append(pen)
    }
    func remove (penIndex : Int) {
        pens.remove(at: penIndex)
    }
    func usage() -> Int {
        return pens.count
    }
    func printDescription() {
        for item in pens {
            print(item.getcolor(), terminator: " ")
        }
        print ("pens: \(pens), capacity: \(maxCapacity)")
    }
}


