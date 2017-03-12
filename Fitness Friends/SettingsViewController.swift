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
            dog.isEnabled = false
        } else {
            cat.isEnabled = false
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
    @IBAction func chooseDog(_ sender: UIButton) {
        mainInstance.items.setPet("Dog")
        dog.isEnabled = false
        cat.isEnabled = true
    }
    
    @IBAction func chooseCat(_ sender: UIButton) {
        mainInstance.items.setPet("Cat")
        cat.isEnabled = false
        dog.isEnabled = true
    }

}
