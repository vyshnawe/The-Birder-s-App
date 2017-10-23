//
//  BirdsTableViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class BirdsTableViewController: UITableViewController {
    
    var countyObj: County!
    
    override func viewDidLoad() {
        self.navigationItem.title = countyObj.name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countyObj.birds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birds_cell", for: indexPath)
        cell.textLabel?.text = countyObj.birds[indexPath.row].name
        cell.detailTextLabel?.text = countyObj.birds[indexPath.row].latinName
        cell.imageView?.image = countyObj.birds[indexPath.row].image
        return cell
    }
    override func viewWillAppear(_ animated:Bool){
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "birds_to_bird"){
        let birdVC = segue.destination as! BirdViewController
        
        birdVC.birdObj = countyObj.birds[(tableView.indexPathForSelectedRow?.row)!]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
        if (segue.identifier == "add_a_bird"){
            let addBirdVC = segue.destination as! AddBirdViewController
            
            addBirdVC.countyObj = countyObj
        }
    }

}
