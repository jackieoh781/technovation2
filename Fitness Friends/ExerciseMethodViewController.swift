//
//  ExerciseMethodViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class ExerciseMethodViewController: UIViewController {
    var x = Coins()
    var value = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        if mainInstance.exercise == "Run" {
            header.image = UIImage(named: "RunHeader")
        }
        else if mainInstance.exercise == "Walk" {
            header.image = UIImage(named: "WalkHeader")
        }
        else if mainInstance.exercise == "Bike" {
            header.image = UIImage(named: "BikeHeader")
        }
        else if mainInstance.exercise == "Swim" {
            header.image = UIImage(named: "SwimHeader")
        }
        */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    @IBOutlet weak var header: UIImageView!
    
}
