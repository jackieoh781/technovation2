//
//  LogViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {

    var exerciseType = ""
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Outlets
    @IBOutlet weak var milesLabel: UILabel!
    @IBOutlet weak var milesStepperOutlet: UIStepper!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var timeStepperOutlet: UIStepper!
    
    //MARK: Actions
    @IBAction func milesStepper(sender: UIStepper) {
        milesLabel.text = "\(milesStepperOutlet.value / 10)"
    }
    @IBAction func timeStepper(sender: UIStepper) {
        x = timeStepperOutlet.value
        minutesLabel.text = "\((Int)(x % 60))"
        hoursLabel.text = "\((Int)(x/60))"
    }
    @IBAction func nextButotn(sender: UIButton) {
    }
    
}
