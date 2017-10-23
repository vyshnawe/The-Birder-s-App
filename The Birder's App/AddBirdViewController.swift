//
//  AddBirdViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/23/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit
import CoreLocation

class AddBirdViewController: UIViewController {
    var countyObj:County!
    @IBOutlet weak var addBirdNameTF: UITextField!
    @IBOutlet weak var addLatinNameTF: UITextField!
    @IBOutlet weak var addLatitudeTF: UITextField!
    @IBOutlet weak var addLongitudeTF: UITextField!
    
    
    @IBAction func cancelAddingBirds(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addBird(_ sender: Any) {
        
        let date = Date().description
        
        var countyIndex:Int = 0
        for i in 0..<State.counties.count{
            if (State.counties[i].name==countyObj.name){
                countyIndex = i
                break
            }
        }
        
        let lat = Double(addLatitudeTF.text!)
        let longg = Double(addLongitudeTF.text!)
        if lat != nil && longg != nil {
            let newBird = Bird(name: addBirdNameTF.text!, latinName: addLatinNameTF.text!, location: CLLocationCoordinate2D(latitude: lat!, longitude: longg!), dateFirstSighted: date, noOfSightings: 1, image: #imageLiteral(resourceName: "Rock pigeon"))
            State.counties[countyIndex].birds.append(newBird)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
