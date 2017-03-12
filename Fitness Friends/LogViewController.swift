//
//  LogViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {

    var exerciseValue = 0.0
    var minutesCounter = 0.0
    var hoursCounter = 0.0
    var x = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    @IBOutlet weak var milesLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var timeStepperOutlet: UIStepper!
    @IBOutlet weak var milesStepperOutlet: UIStepper!
    

    //MARK: Actions
    @IBAction func timeStepper(_ sender: UIStepper) {
        x = timeStepperOutlet.value
        minutesLabel.text = "\((Int)(x.truncatingRemainder(dividingBy: 60)))"
        hoursLabel.text = "\((Int)(x/60))"
    }

    @IBAction func milesStepper(_ sender: UIStepper) {
        milesLabel.text = "\(milesStepperOutlet.value / 10)"
    }
    
    @IBAction func next(_ sender: UIButton) {
        //add coins
        let x = mainInstance.coins.addCoins(mainInstance.exercise, minutes: Double(timeStepperOutlet.value), method: "Log")
        
        //present alert
        let saveAlert = UIAlertController(title: "Congratulations!", message: "You have earned \(x) coins!", preferredStyle: .alert)
        let continueAction = UIAlertAction(title: "Collect and continue", style: .default) { (action:UIAlertAction!) in
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "My Room") as! RoomViewController
            self.present(nextViewController, animated:true, completion:nil)
        }
        saveAlert.addAction(continueAction)
        /*
        let tweetAction = UIAlertAction(title: "Tweet about it!", style: .Default) { (action:UIAlertAction!) in
            print("Okay!");
        }
        saveAlert.addAction(tweetAction)
        */
        self.present(saveAlert, animated: true, completion: nil)
    }
    
}
