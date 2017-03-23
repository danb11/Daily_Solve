//
//  data.swift
//  VendingMachin
//
//  Created by Danb on 2017. 3. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

private let Data = Datasingle()

class Datasingle {
    
    var linkdataSG : Array<balanceData> = []
    // var memodataSG : Array<memodata> = []
    
    class var sharedInstance: Datasingle {
        return Data
    }
}

struct balanceData {
    var currentBc = 0
}
