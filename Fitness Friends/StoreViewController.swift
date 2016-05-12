//
//  StoreViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {

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
    
    //MARK: Actions
    @IBAction func buyCollar(sender: UIButton) {
        /* Display pop up screen
         Message: It's just a regular collar. Do you want to buy it?
         25 coins
         */
    }
    @IBAction func buyFlowercrown(sender: UIButton) {
        /* Display pop up screen
         Message: A flower crown to embrace your inner flower child. Do you want to buy it?
         175 coins
         */
    }
    @IBAction func buyClock(sender: UIButton) {
        /* Display pop up screen
         Message: Tick tock, it's a clock! Would you like to buy it?
         150 coins
         */
    }
    @IBAction func buyCouch(sender: UIButton) {
        /* Display pop up screen
         Message: What a comfy couch! Would you like to buy it?
         150 coins
         */
    }
    

}
