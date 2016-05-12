//
//  Coins.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/9/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import Foundation

class Coins {
    //sets coin amounts for each exercise
    let runValue = 59.0
    let walkValue = 17.7
    let bikeValue = 35.4
    let swimValue = 41.3
    let soccerValue = 41.3
    let danceValue = 41.3
    let gymnasticsValue = 23.6
    let basketballValue = 35.4
    
    var totalCoins = 0.0
    
    func calculateCoins(exerciseType: String, minutes: Double, method: String) -> Double {
        var coinRate = 0.0
        if exerciseType == "Run" {
            coinRate = runValue
        }
        else if exerciseType == "Walk" {
            coinRate = walkValue
        }
        else if exerciseType == "Bike" {
            coinRate = bikeValue
        }
            
        else if exerciseType == "Swim" {
            coinRate = swimValue
        }
            
        else if exerciseType == "Soccer" {
            coinRate = soccerValue
        }
            
        else if exerciseType == "Dance" {
            coinRate = danceValue
        }
            
        else if exerciseType == "Gymnastics" {
            coinRate = gymnasticsValue
        }
            
        else if exerciseType == "Basketball" {
            coinRate = basketballValue
        }
        
        if method == "GPS" {
            return coinRate * minutes * 1.5
        }
        else if method == "Timer" {
            return coinRate * minutes
        }
        else {
            return coinRate * minutes * 0.75
        }
    }
    
    func addCoins(exerciseType: String, minutes: Double, method: String) {
        totalCoins -= calculateCoins(exerciseType, minutes: minutes, method: method)
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
    
    func getExerciseValue(type: String) -> Double {
        if type == "run" {
            return runValue
        }
        else if type == "walk" {
            return walkValue
        }
        else if type == "swim" {
            return swimValue
        }
        else if type == "bike" {
            return bikeValue
        }
        else if type == "soccer" {
            return soccerValue
        }
        else if type == "dance" {
            return danceValue
        }
        else if type == "basketball" {
            return basketballValue
        }
        else {
            return gymnasticsValue
        }
    }
}