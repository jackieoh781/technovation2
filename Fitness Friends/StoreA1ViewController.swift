//
//  StoreA1ViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/26/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreA1ViewController: UIViewController {
    
    var collarCounter = 0
    var greenTieCounter = 0
    var spikyCounter = 0
    var bejeweledCollarCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        if mainInstance.items.hasItem("Collar") {
            self.collarSwitch1.enabled = true
        }
        if mainInstance.items.hasItem("Flowercrown") {
            self.greenTieSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Spiky Collar") {
            self.spikyCollarSwitch1.enabled = true
        }
        if mainInstance.items.hasItem("Bejeweled Collar") {
            self.bejeweledCollarSwitch1.enabled = true
        }
        if mainInstance.items.isItemOn("Collar") {
            self.collarSwitch1.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Flowercrown") {
            self.greenTieSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Spiky Collar") {
            self.spikyCollarSwitch1.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Bejeweled Collar") {
            self.bejeweledCollarSwitch1.setOn(true, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    @IBOutlet weak var collarButton: UIButton!
    @IBOutlet weak var greenTieButton: UIButton!
    @IBOutlet weak var spikyCollarButton: UIButton!
    @IBOutlet weak var bejeweledCollarButton: UIButton!
    
    @IBOutlet weak var collarSwitch1: UISwitch!
    @IBOutlet weak var greenTieSwitch: UISwitch!
    @IBOutlet weak var spikyCollarSwitch1: UISwitch!
    @IBOutlet weak var bejeweledCollarSwitch1: UISwitch!
    
    //MARK: Actions
    @IBAction func buyCollar(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Collar", message: "It's just a regular collar. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Collar", price: 25.0)
                self.collarSwitch1.enabled = true
                self.collarButton.enabled = false
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
                self.greenTieButton.enabled = false
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
    @IBAction func buySpikyCollar(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Spiky Collar", message: "This collar has some fierce spikes on it! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0);
                mainInstance.items.buyItem("Spiky Collar", price: 75.0)
                self.spikyCollarSwitch1.enabled = true
                self.spikyCollarButton.enabled = false
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
                self.bejeweledCollarSwitch1.enabled = true
                self.bejeweledCollarButton.enabled = false
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

    @IBAction func collarSwitch(sender: UISwitch) {
        collarCounter += 1
        if collarCounter % 2 == 1 {
            mainInstance.items.itemOn("Collar")
        }
        else {
            mainInstance.items.itemOff("Collar")
        }

    }

    @IBAction func greenTieSwitch(sender: UISwitch) {
        greenTieCounter += 1
        if greenTieCounter % 2 == 1 {
            mainInstance.items.itemOn("Green Tie")
        }
        else {
            mainInstance.items.itemOff("Green Tie")
        }
    }
    @IBAction func clockSwitch(sender: UISwitch) {
        spikyCounter += 1
        if spikyCounter % 2 == 1 {
            mainInstance.items.itemOn("Clock")
        }
        else {
            mainInstance.items.itemOff("Clock")
        }
    }
    @IBAction func bejeweledCollarSwitch(sender: UISwitch) {
        bejeweledCollarCounter += 1
        if bejeweledCollarCounter % 2 == 1 {
            mainInstance.items.itemOn("Bejeweled Collar")
        }
        else {
            mainInstance.items.itemOff("Bejeweled Collar")
        }
    }

    
}
