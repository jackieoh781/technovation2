//
//  GPSViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/15/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit
import CoreLocation
import HealthKit

class GPSViewController: UIViewController {

    var secondsCounter = 0
    var minutesCounter = 0.0
    var value = 0.0
    var distance = 0.0
    var paused = false
    var timer = NSTimer()
    var x = 0.0
    var type = ""
    
    let locationManager = CLLocationManager()
    
    /*
    lazy var locationManager: CLLocationManager = {
        var _locationManager = CLLocationManager()
        _locationManager.delegate = self
        _locationManager.desiredAccuracy = kCLLocationAccuracyBest
        _locationManager.activityType = .Fitness
        
        // Movement threshold for new events
        _locationManager.distanceFilter = 10.0
        return _locationManager
    }()
    
    lazy var locations = [CLLocation]()
  */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer.invalidate() // just in case this button is tapped multiple times
        
        // start the timer
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
        
        
    //MARK: Outlets
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    
    //MARK: Actions
    @IBAction func pauseResumeTimer(sender: UIButton) {
        paused = !paused
        if paused {
            timer.invalidate()
            (sender).setBackgroundImage(UIImage(named: "ResumeButton2"), forState: .Normal)
        }
        else {
            timer.fire()
            (sender).setBackgroundImage(UIImage(named: "PauseButton2"), forState: .Normal)
        }
    }
    
    //Will display a pop up window with an option to collect the coins and continue, or tweet about the exercise
    @IBAction func save(sender: UIButton) {
        //add coins
        let x = Main().coins.addCoins(type, minutes: minutesCounter, method: "GPS")
        
        //present alert
        let saveAlert = UIAlertController(title: "Congratulations!", message: "You have earned \(x) coins!", preferredStyle: .Alert)
        let continueAction = UIAlertAction(title: "Collect and continue", style: .Default) { (action:UIAlertAction!) in
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("My Room") as! RoomViewController
            self.presentViewController(nextViewController, animated:true, completion:nil)
        }
        saveAlert.addAction(continueAction)
        let tweetAction = UIAlertAction(title: "Tweet about it!", style: .Default) { (action:UIAlertAction!) in
            print("Okay!");
        }
        saveAlert.addAction(tweetAction)
        }
    
    
        
}


