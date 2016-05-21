//
//  ExerciseViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func run(sender: UIButton) {
        mainInstance.setExercise("Run")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("Exercise Methods") as! ExerciseMethodViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func walk(sender: UIButton) {
        mainInstance.setExercise("Walk")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("Exercise Methods") as! ExerciseMethodViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func bike(sender: UIButton) {
        mainInstance.setExercise("Bike")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("Exercise Methods") as! ExerciseMethodViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func swim(sender: UIButton) {
        mainInstance.setExercise("Swim")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("Exercise Methods") as! ExerciseMethodViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
}
