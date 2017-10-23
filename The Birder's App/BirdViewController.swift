//
//  BirdViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    
    var birdObj:Bird!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLavel: UILabel!
    @IBOutlet weak var sightingsTextField: UITextField!
    
    @IBOutlet var birdimg: UIImageView!
    
    @IBAction func updateSightingsButton(_ sender: Any) {
        birdObj.updateNumSightings(sightings:Int(sightingsTextField.text!)!)
        viewDidLoad()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = birdObj.name!
        locationLabel.text = "\(birdObj.location.latitude), \(birdObj.location.longitude)"
        dateLavel.text = birdObj.dateFirstSighted
        sightingsTextField.text = "\(birdObj.noOfSightings!)"
        birdimg.image = birdObj.image!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

