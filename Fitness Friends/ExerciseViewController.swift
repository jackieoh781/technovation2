//
//  ExerciseViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    var exerciseType = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        
        // Pass the selected object to the new view controller.
        if segue.identifier == "run" {
            if let destinationVC = segue.destinationViewController as? ExerciseMethodViewController {
                destinationVC.type = "Run"
            }
        }
        else if segue.identifier == "walk" {
            if let destinationVC = segue.destinationViewController as? ExerciseMethodViewController {
                destinationVC.type = "Walk"
            }
        }
        else if segue.identifier == "swim" {
            if let destinationVC = segue.destinationViewController as? ExerciseMethodViewController {
                destinationVC.type = "Swim"
            }
        }
        if segue.identifier == "bike" {
            if let destinationVC = segue.destinationViewController as? ExerciseMethodViewController {
                destinationVC.type = "Bike"
            }
        }
    }
    
}
