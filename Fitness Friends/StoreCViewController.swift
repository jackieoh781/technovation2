//
//  StoreCViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/24/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreCViewController: UIViewController {
    
    var necklaceCounter = 0
    var braceletsCounter = 0
    var legwarmersCounter = 0
    var daisyCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        if mainInstance.items.hasItem("Pearl Necklace") {
            self.necklaceSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Bracelets") {
            self.braceletsSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Legwarmers") {
            self.legwarmersSwitch.enabled = true
        }
        if mainInstance.items.hasItem("Daisy") {
            self.daisySwitch.enabled = true
        }
        
        if mainInstance.items.isItemOn("Pearl Necklace") {
            self.necklaceSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Bracelets") {
            self.braceletsSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Legwarmers") {
            self.legwarmersSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Daisy") {
            self.daisySwitch.setOn(true, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    @IBOutlet weak var necklace: UIButton!
    @IBOutlet weak var bracelets: UIButton!
    @IBOutlet weak var legwarmers: UIButton!
    @IBOutlet weak var daisy: UIButton!
    
    @IBOutlet weak var necklaceSwitch: UISwitch!
    @IBOutlet weak var braceletsSwitch: UISwitch!
    @IBOutlet weak var legwarmersSwitch: UISwitch!
    @IBOutlet weak var daisySwitch: UISwitch!
    
    //MARK: Actions
    @IBAction func buyNecklace(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Pearl Necklace", message: "A pearl necklace! How pretty! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0)
                mainInstance.items.buyItem("Pearl Necklace", price: 75.0)
                self.necklaceSwitch.enabled = true
                self.necklace.enabled = false
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
    @IBAction func buyBracelets(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Bracelets", message: "", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Bracelets", price: 25.0)
                self.braceletsSwitch.enabled = true
                self.bracelets.enabled = false
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
    @IBAction func buyLegwarmers(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Legwarmers", message: "It's a pair of legwarmers! Do you want to buy them?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(100.0) {
                mainInstance.coins.pay(100.0)
                mainInstance.items.buyItem("Legwarmers", price: 100.0)
                self.legwarmersSwitch.enabled = true
                self.legwarmers.enabled = false
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
    @IBAction func buyDaisy(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Daisy", message: "What a pretty daisy! Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(50.0) {
                mainInstance.coins.pay(50.0)
                mainInstance.items.buyItem("Daisy", price: 100.0)
                self.daisySwitch.enabled = true
                self.daisy.enabled = false
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
    
    @IBAction func necklaceOnOff(sender: UISwitch) {
        necklaceCounter += 1
        if necklaceCounter % 2 == 1 {
            mainInstance.items.itemOn("Pearl Necklace")
        }
        else {
            mainInstance.items.itemOff("Pearl Necklace")
        }
    }
    @IBAction func braceletsOnOff(sender: UISwitch) {
        braceletsCounter += 1
        if braceletsCounter % 2 == 1 {
            mainInstance.items.itemOn("Bracelets")
        }
        else {
            mainInstance.items.itemOff("Bracelets")
        }
    }
    @IBAction func legwarmersOnOff(sender: UISwitch) {
        legwarmersCounter += 1
        if legwarmersCounter % 2 == 1 {
            mainInstance.items.itemOn("Legwarmers")
        }
        else {
            mainInstance.items.itemOff("Legwarmers")
        }
    }
    @IBAction func daisyOnOff(sender: UISwitch) {
        daisyCounter += 1
        if daisyCounter % 2 == 1 {
            mainInstance.items.itemOn("Daisy")
        }
        else {
            mainInstance.items.itemOff("Daisy")
        }
    }
}
