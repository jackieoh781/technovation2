//
//  Store.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/9/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import Foundation

class Store {
    
    var itemsOwned = [String]()
    var itemsOn = Set<String>()
    
    func buyItem(item: String, price: Double) {
        itemsOwned.append(item)
    }
    
    func itemOn(item: String) {
        itemsOn.insert(item)
    }
    
    func itemOff(item: String) {
        itemsOn.remove(item)
    }
    
}