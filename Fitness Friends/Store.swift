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
    var head: Set<String> = ["Flowercrown", "Daisy", "Hibiscus"]
    var neck: Set<String> = ["Collar", "Spiky Collar", "Bejeweled Collar", "Red Scarf", "Green Tie",]
    var headItem = ""
    var neckItem = ""
    var pet = "Dog"
    var totalCoinsSpent = 0.0
    
    func buyItem(item: String, price: Double) {
        itemsOwned.append(item)
        totalCoinsSpent += price
    }
    
    func itemOn(item: String) {
        itemsOn.insert(item)
        
        for items in head {
            if items == item {
                headItem = item
            }
        }
        for items in neck {
            if items == item {
                neckItem = item
            }
        }
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
    
    /*
    func slotFull(item:String) -> Bool {
        
    }
 */
}