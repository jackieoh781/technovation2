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
            self.collarSwitch1.isEnabled = true
        }
        if mainInstance.items.hasItem("Flowercrown") {
            self.greenTieSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Spiky Collar") {
            self.spikyCollarSwitch1.isEnabled = true
        }
        if mainInstance.items.hasItem("Bejeweled Collar") {
            self.bejeweledCollarSwitch1.isEnabled = true
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
    @IBAction func buyCollar(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Collar", message: "It's just a regular collar. Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Collar", price: 25.0)
                self.collarSwitch1.isEnabled = true
                self.collarButton.isEnabled = false
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
    @IBAction func buyGreenTie(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Green Tie", message: "It's a tie! How snazzy! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(50.0) {
                mainInstance.coins.pay(50.0)
                mainInstance.items.buyItem("Green Tie", price: 50.0)
                self.greenTieSwitch.isEnabled = true
                self.greenTieButton.isEnabled = false
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
    @IBAction func buySpikyCollar(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Spiky Collar", message: "This collar has some fierce spikes on it! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0);
                mainInstance.items.buyItem("Spiky Collar", price: 75.0)
                self.spikyCollarSwitch1.isEnabled = true
                self.spikyCollarButton.isEnabled = false
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
    @IBAction func buyBejeweledCollar(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Bejeweled Collar", message: "It looks like this collar has jewels on it! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0)
                mainInstance.items.buyItem("Bejeweled Collar", price: 75.0)
                self.bejeweledCollarSwitch1.isEnabled = true
                self.bejeweledCollarButton.isEnabled = false
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

    @IBAction func collarSwitch(_ sender: UISwitch) {
        collarCounter += 1
        if collarCounter % 2 == 1 {
            if mainInstance.items.slotFull("neck") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Collar")
            }
        }
        else {
            mainInstance.items.itemOff("Collar")
        }

    }

    @IBAction func greenTieSwitch(_ sender: UISwitch) {
        greenTieCounter += 1
        if greenTieCounter % 2 == 1 {
            if mainInstance.items.slotFull("neck") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Green Tie")
            }
        }
        else {
            mainInstance.items.itemOff("Green Tie")
        }
    }
    
    @IBAction func spikyCollarSwitch(_ sender: UISwitch) {
        spikyCounter += 1
        if spikyCounter % 2 == 1 {
            if mainInstance.items.slotFull("neck") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Spiky Collar")
            }
        }
        else {
            mainInstance.items.itemOff("Spiky Collar")
        }
    }
    @IBAction func bejeweledCollarSwitch(_ sender: UISwitch) {
        bejeweledCollarCounter += 1
        if bejeweledCollarCounter % 2 == 1 {
            if mainInstance.items.slotFull("neck") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Bejeweled Collar")
            }
        }
        else {
            mainInstance.items.itemOff("Bejeweled Collar")
        }
    }

    
}
