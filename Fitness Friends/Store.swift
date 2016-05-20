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
    var pet = "Dog"
    var totalCoinsSpent = 0.0
    
    func buyItem(item: String, price: Double) {
        itemsOwned.append(item)
        totalCoinsSpent += price
    }
    
    func itemOn(item: String) {
        itemsOn.insert(item)
    }
    
    func itemOff(item: String) {
        itemsOn.remove(item)
    }
    
    func setPet(animal:String) {
        pet = animal
    }
    
    func isItemOn(item:String) -> Bool {
        for items in itemsOn {
            if items == item {
                return true
            }
        }
        return false
    }
    
    func hasItem(item:String) -> Bool {
        for items in itemsOwned {
            if items == item {
                return true
            }
        }
        return false
    }
}