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

    //Timer variables
    var secondsCounter = 0
    var minutesCounter = 0
    var paused = false
    var timer = NSTimer()
    var coinsEarned = 0.0
    var type = ""
    var value = 0.0

    
    //GPS tracking variables
    var startLocation:CLLocation!
    var lastLocation: CLLocation!
    var traveledDistance:Double = 0
    let locationManager = CLLocationManager()
    var locations = [CLLocation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer.invalidate()
        
        // start the timer
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        if startLocation == nil {
            startLocation = locationManager.location
                //locations.first as! CLLocation
        } else {
            let lastLocation = locations.last as! CLLocation
            let distance = startLocation.distanceFromLocation(lastLocation)
            startLocation = lastLocation
            traveledDistance += distance
        }
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
       
        locationManager(locationManager, didUpdateLocations: locations)
        updateDistanceLabel()
    }
    
    func updateDistanceLabel() {
        distanceLabel.text = "\(round(traveledDistance*1000/1000))"
    }
    
    //MARK: Outlets

    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var pauseResume: UIButton!
    
    

    //MARK: Actions
    @IBAction func pauseResumeTimer(sender: UIButton) {
        paused = !paused
        if paused {
            timer.invalidate()
            pauseResume.setBackgroundImage(UIImage(named: "ResumeButton2"), forState: .Normal)
        }
        else {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
            pauseResume.setBackgroundImage(UIImage(named: "PauseButton2"), forState: .Normal)
        }
        print("\(type)")
    }
    
    //Will display a pop up window with an option to collect the coins and continue, or tweet about the exercise
    @IBAction func save(sender: UIButton) {
        //add coins
        let coinsEarned = mainInstance.coins.addCoins(mainInstance.exercise, minutes: Double(minutesCounter + secondsCounter/60), method: "GPS")
        self.locationManager.stopUpdatingLocation()
        timer.invalidate()
        
        //present alert
        let saveAlert = UIAlertController(title: "Congratulations!", message: "You have earned \(coinsEarned) coins!", preferredStyle: .Alert)
        let continueAction = UIAlertAction(title: "Collect and continue", style: .Default) { (action:UIAlertAction!) in
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("My Room") as! RoomViewController
            self.presentViewController(nextViewController, animated:true, completion:nil)
        }
        saveAlert.addAction(continueAction)
        /*
        let tweetAction = UIAlertAction(title: "Tweet about it!", style: .Default) { (action:UIAlertAction!) in
            print("Okay!")
        }
        saveAlert.addAction(tweetAction)
        */
        self.presentViewController(saveAlert, animated: true, completion: nil)
        }

}


