//
//  BirdViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    
    var birdObj:String!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLavel: UILabel!
    @IBOutlet weak var sightingsTextField: UITextField!
    
    
    @IBAction func updateSightingsButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = birdObj
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

