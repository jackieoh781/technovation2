//
//  StoreCViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/24/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreCViewController: UIViewController {
    
    var flowercrownCounter = 0
    var flowercanCounter = 0
    var flowerpotCounter = 0
    var flowervaseCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        if mainInstance.items.hasItem("Flowercrown") {
            self.flowercrownSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Flowercan") {
            self.flowercanSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Flowerpot") {
            self.flowerpotSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Flowervase") {
            self.flowervaseSwitch.enabled = true
        }
        
        if mainInstance.items.isItemOn("Flowercrown") {
            self.flowercrownSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Flowercan") {
            self.flowercanSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Flowerpot") {
            self.flowerpotSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Flowervase") {
            self.flowervaseSwitch.setOn(true, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    
    @IBOutlet weak var flowercrown: UIButton!
    @IBOutlet weak var flowercan: UIButton!
    @IBOutlet weak var flowerpot: UIButton!
    @IBOutlet weak var flowervase: UIButton!
    
    @IBOutlet weak var flowercrownSwitch: UISwitch!
    @IBOutlet weak var flowercanSwitch: UISwitch!
    @IBOutlet weak var flowerpotSwitch: UISwitch!
    @IBOutlet weak var flowervaseSwitch: UISwitch!
    
    //MARK: Actions

    @IBAction func buyFlowercrown(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Flowercrown", message: "A flower crown to embrace your inner flower child. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(175.0) {
                mainInstance.coins.pay(175.0)
                mainInstance.items.buyItem("Flowercrown", price: 175.0)
                self.flowercrownSwitch.enabled = true
                self.flowercrown.enabled = false
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
    @IBAction func buyFlowercan(sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Flower in a Tin Can", message: "It's a flower in a tin can! Are you sure you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Flowercan", price: 25.0)
                self.flowercanSwitch.enabled = true
                self.flowercan.enabled = false
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
    @IBAction func buyFlowerpot(sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Flower in a Tin Can", message: "It's a flower in a tin can! Are you sure you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Flowercan", price: 25.0)
                self.flowerpotSwitch.enabled = true
                self.flowerpot.enabled = false
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
    @IBAction func buyFlowervase(sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Flowervase", message: "Wow, what a nice vase! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0)
                mainInstance.items.buyItem("Flowervase", price: 150.0)
                self.flowervaseSwitch.enabled = true
                self.flowervase.enabled = false
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
    @IBAction func flowercrownOnOff(sender: UISwitch) {
        flowercrownCounter += 1
        if flowercrownCounter % 2 == 1 {
            mainInstance.items.itemOn("Pearl Necklace")
        }
        else {
            mainInstance.items.itemOff("Pearl Necklace")
        }
    }
    @IBAction func flowercanOnOff(sender: UISwitch) {
        flowercanCounter += 1
        if flowercanCounter % 2 == 1 {
            mainInstance.items.itemOn("Flowercan")
        }
        else {
            mainInstance.items.itemOff("Flowercan")
        }
    }
    @IBAction func flowerpotOnOff(sender: UISwitch) {
        flowerpotCounter += 1
        if flowerpotCounter % 2 == 1 {
            mainInstance.items.itemOn("Flowerpot")
        }
        else {
            mainInstance.items.itemOff("Flowerpot")
        }
    }
    @IBAction func flowervaseOnOff(sender: UISwitch) {
        flowervaseCounter += 1
        if flowervaseCounter % 2 == 1 {
            mainInstance.items.itemOn("Flowervase")
        }
        else {
            mainInstance.items.itemOff("Flowervase")
        }
    }

}
