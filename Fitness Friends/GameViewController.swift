//
//  GameViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/5/16.
//  Copyright (c) 2016 Jacqueline Oh. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configure the view
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        //Create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        //Present the scene
        skView.presentScene(scene)
        
        func prefersStatusBarHidden() -> Bool {
            return true
        }
        
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
}
}