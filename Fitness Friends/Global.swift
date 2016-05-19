//
//  Global.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/16/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import Foundation

class Main {
    var coins = Coins()
    var items = Store()
    var name = ""
    
    init(name:String) {
        self.name = name
    }
}

var mainInstance = Main(name:"My Global Class")