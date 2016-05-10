//
//  Store.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/9/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import Foundation

class Store {
    //cost of store items
    let daisies = 50.0
    let sunflower = 50.0
    let hibiscus = 75.0
    let flowerCrown = 175.0
    let spikyCollar = 75.0
    let regularCollar = 25.0
    let pearlNecklace = 75.0
    let neckTie = 50.0
    let bejeweledCollar = 75.0
    let scarf = 150.0
    let bracelets = 25.0
    let legwarmers = 100.0
    let couch = 150.0
    let table = 200.0
    let flowerCan = 25.0
    let flowerPot = 75.0
    let flowerVase = 150.0
    let clock = 150.0
    let meowntain = 100.0
    let dogCard = 500.0
    
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