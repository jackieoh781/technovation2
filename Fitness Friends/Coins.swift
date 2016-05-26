//
//  Coins.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/9/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import Foundation

class Coins {
    var totalCoins = 0.0
    var totalCoinsEarned = 0.0
    var totalMinutesExercised = 0.0
    
    
    func calculateCoins(exerciseType: String, minutes: Double, method: String) -> Double {
        var coinRate = 0.0
        if exerciseType == "Run" {
            coinRate = 59.0
        }
        else if exerciseType == "Walk" {
            coinRate = 17.7
        }
        else if exerciseType == "Bike" {
            coinRate = 35.4
        }
        else if exerciseType == "Swim" {
            coinRate = 41.3
        }
            
        else if exerciseType == "Soccer" {
            coinRate = 41.3
        }
            
        else if exerciseType == "Dance" {
            coinRate = 41.3
        }
            
        else if exerciseType == "Gymnastics" {
            coinRate = 23.6
        }
            
        else if exerciseType == "Basketball" {
            coinRate = 35.4
        }
        
        if method == "GPS" {
            return coinRate * minutes/60 * 1.5
        }
        else if method == "Timer" {
            return coinRate * minutes/60
        }
        else {
            return coinRate * minutes/60 * 0.75
        }
    }
    
    func addCoins(exerciseType: String, minutes: Double, method: String) -> Double {
        let amount = calculateCoins(exerciseType, minutes: minutes, method: method)
        totalCoins += amount
        totalCoinsEarned += amount
        totalMinutesExercised += minutes
        print("\(amount)")
        return amount
    }
    
    func canPay(itemCost: Double) -> Bool {
        if totalCoins < itemCost {
            return false
        }
        else {
            return true
        }
    }
    
    func pay(itemCost: Double) {
        totalCoins -= itemCost
    }
}