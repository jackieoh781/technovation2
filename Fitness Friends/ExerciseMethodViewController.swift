//
//  ExerciseMethodViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class ExerciseMethodViewController: UIViewController {

    var type = ""
    var x = Coins()
    var value = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let image: UIImage = UIImage(named: "RunHeader")!
        header = UIImageView(image: image)
        self.view.addSubview(header!)
         */
        //move this stuff to the method that loads before screen is displayed
        
        value = x.getExerciseValue(type)

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
        
        if segue.identifier == "gpsSegue" {
            if let destinationVC = segue.destinationViewController as? GPSViewController {
                destinationVC.value = value * 1.5
            }
        }
        else if segue.identifier == "timerSegue" {
            if let destinationVC = segue.destinationViewController as? TimerViewController {
                destinationVC.value = value
            }
        }
        else if segue.identifier == "logSegue" {
            if let destinationVC = segue.destinationViewController as? LogViewController {
                destinationVC.exerciseValue = value * 0.75
            }
        }
    }
    
    //MARK: Outlets
    @IBOutlet weak var header: UIImageView!
    
}
