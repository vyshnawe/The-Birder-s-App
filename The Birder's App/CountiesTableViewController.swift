//
//  ViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class CountiesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return State.counties.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_county", for: indexPath)
        cell.textLabel?.text = State.counties[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "countries_birds"){
        // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
        
        let birdsTVC = segue.destination as! BirdsTableViewController
        
        // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
        // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
        
        birdsTVC.countyObj = State.counties[(tableView.indexPathForSelectedRow?.row)!]
        
        //self.navigationController?.pushViewController(birdsTVC, animated: true)
        }
    }
    
    override func viewWillAppear(_ animated:Bool){
        tableView.reloadData()
    }
}

