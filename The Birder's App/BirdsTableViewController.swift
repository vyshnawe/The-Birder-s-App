//
//  BirdsTableViewController.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class BirdsTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var countyObj: County!
    var secondTableView: UITableView!
    
    override func viewDidLoad() {
        self.navigationItem.title = countyObj.name
        
        secondTableView = UITableView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height))
        secondTableView.register(UITableViewCell.self, forCellReuseIdentifier: "birds_cell")
        secondTableView.delegate = self
        secondTableView.dataSource = self
        view.addSubview(secondTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countyObj.birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birds_cell", for: indexPath)
        cell.textLabel?.text = countyObj.birds[indexPath.row].name
        cell.detailTextLabel?.text = countyObj.birds[indexPath.row].latinName
        cell.imageView?.image = countyObj.birds[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let birdVC:BirdViewController = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier:"bird_vc") as! BirdViewController
        
        birdVC.birdObj = countyObj.birds[indexPath.row]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
}

