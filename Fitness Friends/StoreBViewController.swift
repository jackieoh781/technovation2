//
//  StoreBViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/24/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreBViewController: UIViewController {

    var necklaceCounter = 0
    var scarfCounter = 0
    var daisyCounter = 0
    var hibiscusCounter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if mainInstance.items.hasItem("Necklace") {
            self.necklaceSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Red Scarf") {
            self.redScarfSwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Daisy") {
            self.daisySwitch.isEnabled = true
        }
        if mainInstance.items.hasItem("Hibiscus") {
            self.hibiscusSwitch.isEnabled = true
        }
        
        if mainInstance.items.isItemOn("Necklace") {
            self.necklaceSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Red Scarf") {
            self.redScarfSwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Daisy") {
            self.daisySwitch.setOn(true, animated: true)
        }
        if mainInstance.items.isItemOn("Hibiscus") {
            self.hibiscusSwitch.setOn(true, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Outlets

    @IBOutlet weak var necklace: UIButton!
    @IBOutlet weak var redScarf: UIButton!
    @IBOutlet weak var daisy: UIButton!
    @IBOutlet weak var hibiscus: UIButton!
    
    @IBOutlet weak var necklaceSwitch: UISwitch!
    @IBOutlet weak var redScarfSwitch: UISwitch!
    @IBOutlet weak var daisySwitch: UISwitch!
    @IBOutlet weak var hibiscusSwitch: UISwitch!
    
    //MARK: Actions
    
    @IBAction func buyNecklace(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Pearl Necklace", message: "A pearl necklace! How pretty! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0)
                mainInstance.items.buyItem("Necklace", price: 75.0)
                self.necklaceSwitch.isEnabled = true
                self.necklace.isEnabled = false
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
    @IBAction func buyRedScarf(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Red Scarf", message: "This scarf looks pretty warm! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(150.0) {
                mainInstance.coins.pay(150.0)
                mainInstance.items.buyItem("Red Scarf", price: 150.0)
                self.redScarfSwitch.isEnabled = true
                self.redScarf.isEnabled = false
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
    @IBAction func buyDaisy(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy Daisy", message: "What a pretty daisy! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(50.0) {
                mainInstance.coins.pay(50.0)
                mainInstance.items.buyItem("Daisy", price: 100.0)
                self.daisySwitch.isEnabled = true
                self.daisy.isEnabled = false
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
    @IBAction func buyHibiscus(_ sender: UIButton) {
        let alert = UIAlertController(title: "Buy a Hibiscus", message: "What a snazzy flower! Do you want to buy it?", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .default) { (action:UIAlertAction!) in
            if mainInstance.coins.canPay(75.0) {
                mainInstance.coins.pay(75.0)
                mainInstance.items.buyItem("Hibiscus", price: 75.0)
                self.hibiscusSwitch.isEnabled = true
                self.hibiscus.isEnabled = false
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
    
    @IBAction func necklaceOnOff(_ sender: UISwitch) {
        necklaceCounter += 1
        if necklaceCounter % 2 == 1 {
            if mainInstance.items.slotFull("neck") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Necklace")
            }
        }
        else {
            mainInstance.items.itemOff("Necklace")
        }
    }
    @IBAction func redScarfOnOff(_ sender: UISwitch) {
        scarfCounter += 1
        if scarfCounter % 2 == 1 {
            if mainInstance.items.slotFull("neck") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Red Scarf")
            }
        }
        else {
            mainInstance.items.itemOff("Red Scarf")
        }
    }
    @IBAction func daisyOnOff(_ sender: UISwitch) {
        daisyCounter += 1
        if daisyCounter % 2 == 1 {
            if mainInstance.items.slotFull("head") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Daisy")
            }
        }
        else {
            mainInstance.items.itemOff("Daisy")
        }
    }
    @IBAction func hibiscusOnOff(_ sender: UISwitch) {
        hibiscusCounter += 1
        if hibiscusCounter % 2 == 1 {
            if mainInstance.items.slotFull("head") {
                let fullAlert = UIAlertController(title: "Whoops!", message: "You can only have one item on your pet's neck. Turn off other items to put this one on!", preferredStyle: .alert)
                let no = UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                    print("Okay!")
                }
                fullAlert.addAction(no)
                
                self.present(fullAlert, animated: true, completion: nil)
            }
            else {
                mainInstance.items.itemOn("Hibiscus")
            }
        }
        else {
            mainInstance.items.itemOff("Hibiscus")
        }
    }
}
