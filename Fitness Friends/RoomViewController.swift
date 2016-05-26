//
//  RoomViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/15/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class RoomViewController: UIViewController {

    var location = CGPoint(x: 0, y: 0)
    var animalLocation = CGPoint(x: 0, y: 0)
    var collarLocation = CGPoint(x: 0, y: 0)
    var flowercrownLocation = CGPoint(x: 0, y: 0)
    var clockLocation = CGPoint(x: 0, y: 0)
    var couchLocation = CGPoint(x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if mainInstance.items.isItemOn("Collar") {
            //place item on screen
            collarImage.image = UIImage(named: "collar on animal")
            collarImage.center = collarLocation
        }
        if mainInstance.items.isItemOn("Flowercrown") {
            //place item on screen
            flowercrownImage.image = UIImage(named: "flowercrown on animal")
            flowercrownImage.center = flowercrownLocation
        }
        if mainInstance.items.isItemOn("Clock") {
            //place item on screen
            clockImage.image = UIImage(named: "clock")
            clockImage.center = clockLocation
            self.view.insertSubview(clockImage, atIndex: 1)
        }
        if mainInstance.items.isItemOn("Couch") {
            //place item on screen
            couchImage.image = UIImage(named: "couch in room")
            self.view.insertSubview(couchImage, atIndex: 2)
            couchImage.center = couchLocation
        }
        if mainInstance.items.pet == "Cat" {
            animal.image = UIImage(named:"cat1-2")
            animal.center = animalLocation
        }
        if mainInstance.items.pet == "Dog" {
            animal.image = UIImage(named:"goldenretriever")
            animal.center = animalLocation
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            location = touch.locationInView(self.view)
            if(CGRectContainsPoint(animal.frame, location))
            {
                animal.center = location
                animalLocation = location
            }
            if(CGRectContainsPoint(collarImage.frame, location))
            {
                collarImage.center = location
                collarLocation = location
                self.view.bringSubviewToFront(collarImage)
            }
            if(CGRectContainsPoint(flowercrownImage.frame, location))
            {
                flowercrownImage.center = location
                flowercrownLocation = location
                self.view.bringSubviewToFront(flowercrownImage)
            }
            if(CGRectContainsPoint(clockImage.frame, location))
            {
                clockImage.center = location
                clockLocation = location
            }
            if(CGRectContainsPoint(couchImage.frame, location))
            {
                couchImage.center = location
                couchLocation = location
            }
        }
    }
    
    //MARK: Outlets
    @IBOutlet weak var animal: UIImageView!
    @IBOutlet weak var collarImage: UIImageView!
    @IBOutlet weak var flowercrownImage: UIImageView!
    @IBOutlet weak var clockImage: UIImageView!
    @IBOutlet weak var couchImage: UIImageView!
    

}
