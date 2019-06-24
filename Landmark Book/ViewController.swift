//
//  ViewController.swift
//  Landmark Book
//
//  Created by İzzet Kara on 24.06.2019.
//  Copyright © 2019 Izzet Kara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var landmarkNames = [String] ()
    var landmarkImage = [UIImage] ()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        landmarkNames.append("Istanbul")
        landmarkNames.append("Eskisehir")
        landmarkNames.append("Antalya")
        landmarkNames.append("Izmir")
        
        landmarkImage.append(UIImage(named: "eskisehir.jpg")!)
        landmarkImage.append(UIImage(named: "istanbul.jpg")!)
        landmarkImage.append(UIImage(named: "antalya.jpg")!)
        landmarkImage.append(UIImage(named: "izmir.jpg")!)
        
        
        
    }


}

