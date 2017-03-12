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
    @IBAction func run(_ sender: UIButton) {
        mainInstance.setExercise("Run")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Exercise Methods") as! ExerciseMethodViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func walk(_ sender: UIButton) {
        mainInstance.setExercise("Walk")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Exercise Methods") as! ExerciseMethodViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func bike(_ sender: UIButton) {
        mainInstance.setExercise("Bike")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Exercise Methods") as! ExerciseMethodViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func swim(_ sender: UIButton) {
        mainInstance.setExercise("Swim")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Exercise Methods") as! ExerciseMethodViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
}
