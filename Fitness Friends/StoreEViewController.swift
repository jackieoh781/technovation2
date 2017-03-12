//
//  StoreEViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/25/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Outlets
    @IBOutlet weak var mountain: UIButton!
    @IBOutlet weak var table: UIButton!
    @IBOutlet weak var dogCard: UIButton!
    
    @IBOutlet weak var mountainSwitch: UISwitch!
    @IBOutlet weak var tableSwitch: UISwitch!
    @IBOutlet weak var dogCardSwitch: UISwitch!
    
    
    
    //MARK: Actions
    @IBAction func buyMountain(_ sender: UIButton) {
    }
    @IBAction func buyTable(_ sender: UIButton) {
    }
    @IBAction func buyDogCard(_ sender: UIButton) {
    }
    
    @IBAction func mountainSwitch(_ sender: UISwitch) {
    }
    
}
