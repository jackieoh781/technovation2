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
    var headpieceLocation = CGPoint(x: 0, y: 0)
    var clockLocation = CGPoint(x: 0, y: 0)
    var couchLocation = CGPoint(x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //neck items
        if mainInstance.items.neckItem == "Collar" {
            //place item on screen
            neck.image = UIImage(named: "collar on animal")
            neck.center = collarLocation
        }
        if mainInstance.items.neckItem == "Spiky Collar" {
            //place item on screen
            neck.image = UIImage(named: "spiky collar on animal")
            neck.center = collarLocation
        }
        if mainInstance.items.neckItem == "Bejeweled Collar" {
            //place item on screen
            head.image = UIImage(named: "bejeweled collar on animal")
            head.center = collarLocation
        }
        if mainInstance.items.neckItem == "Red Scarf" {
            //place item on screen
            head.image = UIImage(named: "red scarf on animal")
            head.center = collarLocation
        }
        if mainInstance.items.neckItem == "Green Tie" {
            //place item on screen
            head.image = UIImage(named: "green tie on animal")
            head.center = collarLocation
        }
        
        //head items
        if mainInstance.items.headItem == "Flowercrown" {
            //place item on screen
            head.image = UIImage(named: "flowercrown on animal")
            head.center = headpieceLocation
        }
        
        
        
        //furniture and other objects
        if mainInstance.items.isItemOn("Clock") {
            //place item on screen
            clockImage.image = UIImage(named: "clock")
            clockImage.center = clockLocation
            self.view.insertSubview(clockImage, at: 1)
        }
        if mainInstance.items.isItemOn("Couch") {
            //place item on screen
            couchImage.image = UIImage(named: "couch in room")
            self.view.insertSubview(couchImage, at: 3)
            couchImage.center = couchLocation
        }
        if mainInstance.items.isItemOn("Table") {
            //place item on screen
            tableImage.image = UIImage(named: "table in room")
            self.view.insertSubview(tableImage, at: 2)
        }
        if mainInstance.items.isItemOn("Mountain") {
            //place item on screen
            paintingImage.image = UIImage(named: "mountain in room")
        }
        if mainInstance.items.isItemOn("Flowercan") {
            //place item on screen
            flowerImage.image = UIImage(named: "flower can transparent")
        }
        if mainInstance.items.isItemOn("Flowerpot") {
            //place item on screen
            flowerImage.image = UIImage(named: "flower transparent")
        }
        if mainInstance.items.isItemOn("Flowervase") {
            //place item on screen
            flowerImage.image = UIImage(named: "flowervase transparent")
        }
        
        //pet
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
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            location = touch.location(in: self.view)
            if(animal.frame.contains(location))
            {
                animal.center = location
                animalLocation = location
            }
            if(neck.frame.contains(location))
            {
                neck.center = location
                collarLocation = location
                self.view.bringSubview(toFront: neck)
            }
            if(head.frame.contains(location))
            {
                head.center = location
                headpieceLocation = location
                self.view.bringSubview(toFront: head)
            }
            if(clockImage.frame.contains(location))
            {
                clockImage.center = location
                clockLocation = location
            }
            if(couchImage.frame.contains(location))
            {
                couchImage.center = location
                couchLocation = location
            }
        }
    }
    
    //MARK: Outlets
    @IBOutlet weak var animal: UIImageView!
    @IBOutlet weak var head: UIImageView!
    @IBOutlet weak var neck: UIImageView!
    @IBOutlet weak var clockImage: UIImageView!
    @IBOutlet weak var paintingImage: UIImageView!
    @IBOutlet weak var couchImage: UIImageView!
    @IBOutlet weak var tableImage: UIImageView!
    @IBOutlet weak var flowerImage: UIImageView!
    
    

}
