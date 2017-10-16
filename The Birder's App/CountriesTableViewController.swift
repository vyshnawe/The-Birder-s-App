//
//  ViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class CountriesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var countries:[String]!  = ["India", "USA", "South America", "Australia"]
    var tableView = UITableView()
    
    override func viewDidLoad() {
        tableView.frame = CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell_country")
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_country", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
        
        let birdsTVC:BirdsTableViewController = BirdsTableViewController()
        
        // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
        // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
        
        birdsTVC.countryObj = countries[indexPath.row]
        
        self.navigationController?.pushViewController(birdsTVC, animated: true)
    }
}

