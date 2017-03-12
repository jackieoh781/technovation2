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
    var exercise = ""
    var miles = 0.0
    
    init(name:String) {
        self.name = name
    }
    
    func setExercise(_ x:String) {
        exercise = x
    }
}

var mainInstance = Main(name:"My Global Class")
