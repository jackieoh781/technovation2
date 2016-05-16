//
//  StoreViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {
    var coins = Coins()
    var items = Store()
    var collarCounter = 0
    var flowercrownCounter = 0
    var clockCounter = 0
    var couchCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

    //MARK: Actions
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a collar for 25 coins
    @IBAction func buyCollar(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Collar", message: "It's just a regular collar. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(25.0) {
                self.coins.pay(25.0)
                self.items.buyItem("Collar", price: 25.0)
                //collarSwitch.setEnabled(true)
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
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a flowercrown for 175 coins
    @IBAction func buyFlowercrown(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Flowercrown", message: "A flower crown to embrace your inner flower child. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(175.0) {
                self.coins.pay(175.0)
                self.items.buyItem("Flowercrown", price: 175.0)
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
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a clock for 150 coins
    @IBAction func buyClock(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Clock", message: "Tick tock, it's a clock! Would you like to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(150.0) {
            self.coins.pay(150.0);
            self.items.buyItem("Clock", price: 150.0)
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
    
    //when clicked, this button displays a pop up screen that asks the user if they want to buy a couch for 150 coins
    @IBAction func buyCouch(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Couch", message: "What a comfy couch! Would you like to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(150.0) {
                self.coins.pay(150.0);
                self.items.buyItem("Couch", price: 150.0)
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
    
    //turns on the collar in the Room screen
    @IBAction func collarSwitch(sender: UISwitch) {
        collarCounter += 1
        if collarCounter % 2 == 1 {
            self.items.itemOn("Collar")
        }
        else {
            self.items.itemOff("Collar")
        }
    }
    
    //turns on the flowercrown in the Room screen
    @IBAction func flowercrownSwitch(sender: UISwitch) {
        flowercrownCounter += 1
        if flowercrownCounter % 2 == 1 {
            self.items.itemOn("Flowercrown")
        }
        else {
            self.items.itemOff("Flowercrown")
        }
    }
    
    //turns on the clock in the Room screen
    @IBAction func clockSwitch(sender: UISwitch) {
        clockCounter += 1
        if clockCounter % 2 == 1 {
            self.items.itemOn("Clock")
        }
        else {
            self.items.itemOff("Clock")
        }
    }
    
    //turns on the couch in the Room screen
    @IBAction func couchSwitch(sender: UISwitch) {
        couchCounter += 1
        if couchCounter % 2 == 1 {
            self.items.itemOn("Couch")
        }
        else {
            self.items.itemOff("Couch")
        }
    }
    
}
