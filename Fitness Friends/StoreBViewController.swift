//
//  StoreBViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/24/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreBViewController: UIViewController {

    var spikyCounter = 0
    var scarfCounter = 0
    var bejeweledCounter = 0
    var tieCounter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if mainInstance.items.hasItem("Spiky Collar") {
            self.spikyCollarSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Red Scarf") {
            self.redScarfSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Bejeweled Collar") {
            self.bejeweledCollarSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Green Tie") {
            self.greenTieSwitch.enabled = true
        }
        
        if mainInstance.items.isItemOn("Spiky Collar") {
            self.spikyCollarSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Red Scarf") {
            self.redScarfSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Bejeweled Collar") {
            self.bejeweledCollarSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Green Tie") {
            self.greenTieSwitch.setOn(true, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Outlets
    @IBOutlet weak var spikyCollar: UIButton!
    @IBOutlet weak var redScarf: UIButton!
    @IBOutlet weak var bejeweledCollar: UIButton!
    @IBOutlet weak var greenTie: UIButton!
    
    @IBOutlet weak var spikyCollarSwitch: UISwitch!
    @IBOutlet weak var redScarfSwitch: UISwitch!
    @IBOutlet weak var bejeweledCollarSwitch: UISwitch!
    @IBOutlet weak var greenTieSwitch: UISwitch!
    
    
    
    //MARK: Actions
    
    @IBAction func buySpikyCollar(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Spiky Collar", message: "This collar has some fierce spikes on it! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0)
                mainInstance.items.buyItem("Spiky Collar", price: 75.0)
                self.spikyCollarSwitch.enabled = true
                self.spikyCollar.enabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "Okay", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.presentViewController(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    @IBAction func buyRedScarf(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Red Scarf", message: "This scarf looks pretty warm! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0)
                mainInstance.items.buyItem("Red Scarf", price: 150.0)
                self.redScarfSwitch.enabled = true
                self.redScarf.enabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "Okay", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.presentViewController(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    @IBAction func buyBejeweledCollar(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Bejeweled Collar", message: "It looks like this collar has jewels on it! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0)
                mainInstance.items.buyItem("Bejeweled Collar", price: 75.0)
                self.bejeweledCollarSwitch.enabled = true
                self.bejeweledCollar.enabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "Okay", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.presentViewController(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    @IBAction func buyGreenTie(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Green Tie", message: "It's a tie! How snazzy! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(50.0) {
                mainInstance.coins.pay(50.0)
                mainInstance.items.buyItem("Green Tie", price: 50.0)
                self.greenTieSwitch.enabled = true
                self.greenTie.enabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "Okay", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.presentViewController(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func spikyCollarOnOff(sender: UISwitch) {
        spikyCounter += 1
        if spikyCounter % 2 == 1 {
            mainInstance.items.itemOn("Spiky Collar")
        }
        else {
            mainInstance.items.itemOff("Spiky Collar")
        }
    }
    @IBAction func redScarfOnOff(sender: UISwitch) {
        scarfCounter += 1
        if scarfCounter % 2 == 1 {
            mainInstance.items.itemOn("Red Scarf")
        }
        else {
            mainInstance.items.itemOff("Red Scarf")
        }
    }
    @IBAction func bejeweledCollarOnOff(sender: UISwitch) {
        bejeweledCounter += 1
        if bejeweledCounter % 2 == 1 {
            mainInstance.items.itemOn("Bejeweled Collar")
        }
        else {
            mainInstance.items.itemOff("Bejeweled Collar")
        }
    }
    @IBAction func greenTieOnOff(sender: UISwitch) {
        tieCounter += 1
        if tieCounter % 2 == 1 {
            mainInstance.items.itemOn("Clock")
        }
        else {
            mainInstance.items.itemOff("Clock")
        }
    }
}
