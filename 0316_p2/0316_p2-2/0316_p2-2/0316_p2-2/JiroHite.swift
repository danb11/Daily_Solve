//
//  JiroHite.swift
//  0316_p2-2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation


class JinroHite : Drink {
    var color : Bool
    init(isColor : Bool) {
        color = isColor
        super.init()
        setBrand("JinroHite")
        setPrice(2000)
        setCapacity(500)
    }
}

class Toktokpeach : JinroHite {
    let peach : String
    init(tastepeach : String) {
        peach = tastepeach
        super.init(isColor: true)
    }
}

class Toktokpine : JinroHite {
    let pine : String
    init(tastepine : String) {
        pine = tastepine
        super.init(isColor: true)
    }
}


class Soju : JinroHite {
    init() {
        super.init(isColor: false)
    }
}
