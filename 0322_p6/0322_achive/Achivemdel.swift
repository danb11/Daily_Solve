//
//  Achivemdel.swift
//  0322_achive
//
//  Created by Danb on 2017. 3. 22..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

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

