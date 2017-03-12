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
            self.flowercrownSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Flowercan") {
            self.flowercanSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Flowerpot") {
            self.flowerpotSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Flowervase") {
            self.flowervaseSwitch.isEnabled = true
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

    @IBAction func buyFlowercrown(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Flowercrown", message: "A flower crown to embrace your inner flower child. Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(175.0) {
                mainInstance.coins.pay(175.0)
                mainInstance.items.buyItem("Flowercrown", price: 175.0)
                self.flowercrownSwitch.isEnabled = true
                self.flowercrown.isEnabled = false
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
    @IBAction func buyFlowercan(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Flower in a Tin Can", message: "It's a flower in a tin can! Are you sure you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Flowercan", price: 25.0)
                self.flowercanSwitch.isEnabled = true
                self.flowercan.isEnabled = false
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
    @IBAction func buyFlowerpot(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Flower in a Tin Can", message: "It's a flower in a tin can! Are you sure you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(25.0) {
                mainInstance.coins.pay(25.0)
                mainInstance.items.buyItem("Flowercan", price: 25.0)
                self.flowerpotSwitch.isEnabled = true
                self.flowerpot.isEnabled = false
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
    @IBAction func buyFlowervase(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Flowervase", message: "Wow, what a nice vase! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0)
                mainInstance.items.buyItem("Flowervase", price: 150.0)
                self.flowervaseSwitch.isEnabled = true
                self.flowervase.isEnabled = false
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
    @IBAction func flowercrownOnOff(_ sender: UISwitch) {
        flowercrownCounter += 1
        if flowercrownCounter % 2 == 1 {
            if mainInstance.items.slotFull("head") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Flowercrown")
            }
        }
        else {
            mainInstance.items.itemOff("Flowercrown")
        }
    }
    @IBAction func flowercanOnOff(_ sender: UISwitch) {
        flowercanCounter += 1
        if flowercanCounter % 2 == 1 {
            if mainInstance.items.slotFull("flowers") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one flower item. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Flowercan")
            }
        }
        else {
            mainInstance.items.itemOff("Flowercan")
        }
    }
    @IBAction func flowerpotOnOff(_ sender: UISwitch) {
        flowerpotCounter += 1
        if flowerpotCounter % 2 == 1 {
            if mainInstance.items.slotFull("flowers") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one flower item. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Flowerpot")
            }
        }
        else {
            mainInstance.items.itemOff("Flowerpot")
        }
    }
    @IBAction func flowervaseOnOff(_ sender: UISwitch) {
        flowervaseCounter += 1
        if flowervaseCounter % 2 == 1 {
            if mainInstance.items.slotFull("flowers") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one flower item. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Flowervase")
            }
        }
        else {
            mainInstance.items.itemOff("Flowervase")
        }
    }

}
