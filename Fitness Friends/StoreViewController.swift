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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    @IBAction func buyCollar(sender: UIButton) {
        /* Display pop up screen
         Message: It's just a regular collar. Do you want to buy it?
         25 coins
         */
        let alert = UIAlertController(title: "Buy Collar", message: "It's just a regular collar. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(25.0) {
                self.coins.pay(25.0)
                //collarSwitch.setEnabled(true)
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!");
                }
                brokeAlert.addAction(no)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        
    }
    @IBAction func buyFlowercrown(sender: UIButton) {
        let alert = UIAlertController(title: "Buy Flowercrown", message: "A flower crown to embrace your inner flower child. Do you want to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(175.0) {
                self.coins.pay(175.0);
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!");
                }
                brokeAlert.addAction(no)
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
    }
    @IBAction func buyClock(sender: UIButton) {
        /* Display pop up screen
         Message: Tick tock, it's a clock! Would you like to buy it?
         150 coins
         */
        let alert = UIAlertController(title: "Buy Clock", message: "Tick tock, it's a clock! Would you like to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(150.0) {
            self.coins.pay(150.0);
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!");
                }
                brokeAlert.addAction(no)

            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
        
    }
    @IBAction func buyCouch(sender: UIButton) {
        /* Display pop up screen
         Message: What a comfy couch! Would you like to buy it?
         150 coins
         */
        let alert = UIAlertController(title: "Buy Couch", message: "What a comfy couch! Would you like to buy it?", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "Sure!", style: .Default) { (action:UIAlertAction!) in
            if self.coins.canPay(150.0) {
                self.coins.pay(150.0);
            }
            else {
                let brokeAlert = UIAlertController(title: "Oh no!", message: "It looks like you don't have enough coins to buy this item. Earn more coins and come back later!", preferredStyle: .Alert)
                let no = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
                    print("Okay!");
                }
                brokeAlert.addAction(no)
                
            }
        }
        alert.addAction(OKAction)
        let cancelAction = UIAlertAction(title: "No thanks!", style: .Cancel) { (action:UIAlertAction!) in
            print("Okay!");
        }
        alert.addAction(cancelAction)
    }
    
    @IBAction func collarSwitch(sender: UISwitch) {
    }
    @IBAction func flowercrownSwitch(sender: UISwitch) {
    }
    @IBAction func clockSwitch(sender: UISwitch) {
    }
    @IBAction func couchSwitch(sender: UISwitch) {
    }
    
}
