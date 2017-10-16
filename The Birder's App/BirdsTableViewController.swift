//
//  BirdsTableViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class BirdsTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var countryObj:String!
    var birds:[String]!  = ["Parrot", "Eagle", "Crane", "hen"]
    var secondTableView: UITableView!
    
    override func viewDidLoad() {
        self.navigationItem.title = countryObj
        
        secondTableView = UITableView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height))
        secondTableView.register(UITableViewCell.self, forCellReuseIdentifier: "birds_cell")
        secondTableView.delegate = self
        secondTableView.dataSource = self
        view.addSubview(secondTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birds_cell", for: indexPath)
        cell.textLabel?.text = birds[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
        
        let birdVC:BirdViewController = BirdViewController()
        
        // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
        // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
        
        birdVC.birdObj = birds[indexPath.row]
        
        // Every UIViewController, if it is part of a UINavigationController stack, has a navigationController property that references that
        // UINavigationController.  This is quite handy, when we want to push a new view controller
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
}

