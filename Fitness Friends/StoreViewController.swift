//
//  StoreViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {
    var collarCounter = 0
    var flowercrownCounter = 0
    var clockCounter = 0
    var couchCounter = 0
    var collarEnabled = false
    var flowercrownEnabled = false
    var clockEnabled = false
    var couchEnabled = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collarSwitch1.enabled = true
        
        
        if mainInstance.items.hasItem("Collar") {
            self.collarSwitch1.enabled = true
        }
        if mainInstance.items.hasItem("Flowercrown") {
            self.flowercrownSwitch1.enabled = true
        }
        if mainInstance.items.hasItem("Clock") {
            self.clockSwitch1.enabled = true
        }
        if mainInstance.items.hasItem("Couch") {
            self.couchSwitch1.enabled = true
        }
        if mainInstance.items.isItemOn("Collar") {
            self.collarSwitch1.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Flowercrown") {
            self.flowercrownSwitch1.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Clock") {
            self.clockSwitch1.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Couch") {
            self.couchSwitch1.setOn(true, animated: true)
        }
        
        updateLabel()
    }
    
    func updateLabel() {
        coinsLabel.text = "\(Int(mainInstance.coins.totalCoins))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Outlets
    @IBOutlet weak var coinsLabel: UILabel!
    @IBOutlet weak var collarSwitch1: UISwitch!
    @IBOutlet weak var flowercrownSwitch1: UISwitch!
    @IBOutlet weak var clockSwitch1: UISwitch!
    @IBOutlet weak var couchSwitch1: UISwitch!
    @IBOutlet weak var collarButton: UIButton!
    @IBOutlet weak var flowercrownButton: UIButton!
    @IBOutlet weak var clockButton: UIButton!
    @IBOutlet weak var couchButton: UIButton!
    

    //MARK: Actions
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a collar for 25 coins
    @IBAction func buyCollar(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Collar", message: "It's just a regular collar. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Collar", price: 25.0)
                self.collarSwitch1.enabled = true
                self.collarEnabled = true
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
        updateLabel()
        
    }
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a flowercrown for 175 coins
    @IBAction func buyFlowercrown(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Flowercrown", message: "A flower crown to embrace your inner flower child. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(175.0) {
                mainInstance.coins.pay(175.0)
                mainInstance.items.buyItem("Flowercrown", price: 175.0)
                self.flowercrownSwitch1.enabled = true
                self.flowercrownEnabled = true
                self.flowercrownButton.enabled = false
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
        updateLabel()
    }
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a clock for 150 coins
    @IBAction func buyClock(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Clock", message: "Tick tock, it's a clock! Would you like to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0);
                mainInstance.items.buyItem("Clock", price: 150.0)
                self.clockSwitch1.enabled = true
                self.clockEnabled = true
                self.clockButton.enabled = false
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
        updateLabel()
        
    }
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a couch for 150 coins
    @IBAction func buyCouch(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Couch", message: "What a comfy couch! Would you like to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0);
                mainInstance.items.buyItem("Couch", price: 150.0)
                self.couchSwitch1.enabled = true
                self.couchEnabled = true
                self.couchButton.enabled = false
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
        updateLabel()
    }
    
    //turns on the collar in the Room screen
    @IBAction func collarSwitch(sender: UISwitch) {
        collarCounter += 1
        if collarCounter % 2 == 1 {
            mainInstance.items.itemOn("Collar")
        }
        else {
            mainInstance.items.itemOff("Collar")
        }
    }
    
    //turns on the flowercrown in the Room screen
    @IBAction func flowercrownSwitch(sender: UISwitch) {
        flowercrownCounter += 1
        if flowercrownCounter % 2 == 1 {
            mainInstance.items.itemOn("Flowercrown")
        }
        else {
            mainInstance.items.itemOff("Flowercrown")
        }
    }
    
    //turns on the clock in the Room screen
    @IBAction func clockSwitch(sender: UISwitch) {
        clockCounter += 1
        if clockCounter % 2 == 1 {
            mainInstance.items.itemOn("Clock")
        }
        else {
            mainInstance.items.itemOff("Clock")
        }
    }
    
    //turns on the couch in the Room screen
    @IBAction func couchSwitch(sender: UISwitch) {
        couchCounter += 1
        if couchCounter % 2 == 1 {
            mainInstance.items.itemOn("Couch")
        }
        else {
            mainInstance.items.itemOff("Couch")
        }
    }
    
}
