//
//  StoreViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/12/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreAViewController: UIViewController {
    var collarCounter = 0
    var flowercrownCounter = 0
    var clockCounter = 0
    var couchCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel()
    }
    
    func updateLabel() {
        coinsLabel.text = "\(Int(mainInstance.coins.totalCoins))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Outlets
    @IBOutlet weak var coinsLabel: UILabel!
    
}
