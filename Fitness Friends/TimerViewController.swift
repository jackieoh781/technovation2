//
//  TimerViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/15/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    var secondsCounter = 0
    var minutesCounter = 0
    var value = 0.0
    var paused = false
    var timer = Timer()
    var type = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        timer.invalidate()
        
        // start the timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timerAction() {
        secondsCounter += 1
        if secondsCounter >= 60 {
            secondsCounter -= 60
            minutesCounter += 1
        }
        if secondsCounter < 10
        {
            secondsLabel.text = "0" + "\(secondsCounter)"
        }
        else {
            secondsLabel.text = "\(secondsCounter)"
        }
        minutesLabel.text = "\(minutesCounter)"
    }
    
    //MARK: Outlets
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var pauseResume: UIButton!
    
    //MARK: Actions
    
    //if the timer is activated, the button will pause it. If it isn't, then it will play it
    @IBAction func pauseResumeTimer(_ sender: UIButton) {
        paused = !paused
        if paused {
            timer.invalidate()
            pauseResume.setBackgroundImage(UIImage(named: "ResumeButton"), for: UIControlState())
        }
        else {
             timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
            pauseResume.setBackgroundImage(UIImage(named: "PauseButton"), for: UIControlState())
        }
    }

    //Will display a pop up window with an option to collect the coins and continue, or tweet about the exercise
    @IBAction func save(_ sender: UIButton) {
        //add coins
        let x = mainInstance.coins.addCoins(mainInstance.exercise, minutes: Double(minutesCounter + secondsCounter/60), method: "Timer")
        timer.invalidate()
        
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
    


