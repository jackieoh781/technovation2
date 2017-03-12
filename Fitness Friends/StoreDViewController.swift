//
//  StoreDViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/24/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreDViewController: UIViewController {

    var couchCounter = 0
    var mountainCounter = 0
    var clockCounter = 0
    var tableCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if mainInstance.items.hasItem("Couch") {
            self.couchSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Mountain") {
            self.mountainSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Clock") {
            self.clockSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Table") {
            self.tableSwitch.isEnabled = true
        }
        
        if mainInstance.items.isItemOn("Couch") {
            self.couchSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Mountain") {
            self.mountainSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Clock") {
            self.clockSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Table") {
            self.tableSwitch.setOn(true, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    
    @IBOutlet weak var couch: UIButton!
    @IBOutlet weak var mountain: UIButton!
    @IBOutlet weak var clock: UIButton!
    @IBOutlet weak var table: UIButton!
    
    @IBOutlet weak var couchSwitch: UISwitch!
    @IBOutlet weak var mountainSwitch: UISwitch!
    @IBOutlet weak var clockSwitch: UISwitch!
    @IBOutlet weak var tableSwitch: UISwitch!
    
    //MARK: Actions
    @IBAction func buyCouch(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Couch", message: "What a comfy couch! Would you like to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0);
                mainInstance.items.buyItem("Couch", price: 150.0)
                self.couchSwitch.isEnabled = true
                self.couch.isEnabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.present(brokeAlert, animated: true, completion: nil)
                
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func buyMountain(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Painting", message: "It's a painting of a mountain! Are you sure you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(100.0) {
                mainInstance.coins.pay(100.0)
                mainInstance.items.buyItem("Mountain", price: 100.0)
                self.mountainSwitch.isEnabled = true
                self.mountain.isEnabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.present(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func buyClock(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Clock", message: "Tick tock, it's a clock! Would you like to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0)
                mainInstance.items.buyItem("Clock", price: 150.0)
                self.clockSwitch.isEnabled = true
                self.clockSwitch.isEnabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.present(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func buyTable(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Wooden Table", message: "It's a sturdy wooden table! Would you like to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(200.0) {
                mainInstance.coins.pay(200.0)
                mainInstance.items.buyItem("Table", price: 200.0)
                self.tableSwitch.isEnabled = true
                self.tableSwitch.isEnabled = false
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                brokeAlert.addAction(no)
                self.present(brokeAlert, animated: true, completion: nil)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func couchOnOff(_ sender: UISwitch) {
        couchCounter += 1
        if couchCounter % 2 == 1 {
            mainInstance.items.itemOn("Couch")
        }
        else {
            mainInstance.items.itemOff("Couch")
        }
    }
    @IBAction func mountainOnOff(_ sender: UISwitch) {
        mountainCounter += 1
        if mountainCounter % 2 == 1 {
            mainInstance.items.itemOn("Mountain")
        }
        else {
            mainInstance.items.itemOff("Mountain")
        }
    }
    @IBAction func clockOnOff(_ sender: UISwitch) {
        clockCounter += 1
        if clockCounter % 2 == 1 {
            mainInstance.items.itemOn("Clock")
        }
        else {
            mainInstance.items.itemOff("Clock")
        }
    }
    @IBAction func tableOnOff(_ sender: UISwitch) {
        tableCounter += 1
        if tableCounter % 2 == 1 {
            mainInstance.items.itemOn("Table")
        }
        else {
            mainInstance.items.itemOff("Table")
        }
    }    

}
