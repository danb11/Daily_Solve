//
//  filematch.swift
//  0315_p1
//
//  Created by Danb on 2017. 3. 15..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation
//
//let fileA = FileManager()
//var result : [String] = []



//result = try fileA.contentsOfDirectory(atPath: "")

func allFiles(atPath : String)->[String] {
    let file = FileManager()
    var result : [String] = []
    do {
        result = try file.contentsOfDirectory(atPath: atPath)
    }
    catch let error as NSError {
        print (error)
    }
    return result
}


func isExist(filename : String, atPath: String) -> Bool {
    return true
}

