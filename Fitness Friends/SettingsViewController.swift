//
//  SettingsViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/17/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        minutesExercised.text = "\(mainInstance.coins.totalMinutesExercised)"
        milesTravelled.text = ""
        coinsEarned.text = "\(mainInstance.coins.totalCoinsEarned)"
        
        if mainInstance.items.pet == "Dog" {
            dog.enabled = false
        } else {
            cat.enabled = false
        }
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
    @IBOutlet weak var minutesExercised: UILabel!
    @IBOutlet weak var milesTravelled: UILabel!
    @IBOutlet weak var coinsEarned: UILabel!
    @IBOutlet weak var dog: UIButton!
    @IBOutlet weak var cat: UIButton!
    
    
    //MARK: Actions
    @IBAction func chooseDog(sender: UIButton) {
        mainInstance.items.setPet("Dog")
        dog.enabled = false
        cat.enabled = true
    }
    
    @IBAction func chooseCat(sender: UIButton) {
        mainInstance.items.setPet("Cat")
        cat.enabled = false
        dog.enabled = true
    }

}
