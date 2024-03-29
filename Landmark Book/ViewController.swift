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
    var selectedLandmarkName = ""
    var selectedLanmarkImage = UIImage()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       // Bir satırı kullanıcı kendi silmek isterse bu fonksiyonu kullanablirim.<
        if editingStyle == UITableViewCell.EditingStyle.delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    // Kod: Bir yer seçildiğinde ne yapacağını yazıyoruz.Alttaki kod. didSelectRowAt
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedLandmarkName = landmarkNames[indexPath.row]
        selectedLanmarkImage = landmarkImage [indexPath.row]
        performSegue(withIdentifier: "toolImageViewController", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toolImageViewController" {
            let destinationViewController = segue.destination as! ImageViewController
            destinationViewController.landmarkName = selectedLandmarkName
            destinationViewController.landmarkImage = selectedLanmarkImage
            
        }
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
        landmarkNames.append("Canakkale")
        
        landmarkImage.append(UIImage(named: "istanbul.jpg")!)
        landmarkImage.append(UIImage(named: "eskisehir.jpg")!)
        landmarkImage.append(UIImage(named: "antalya.jpg")!)
        landmarkImage.append(UIImage(named: "izmir.jpg")!)
        landmarkImage.append(UIImage(named: "canakkale.jpg")!)
        
        
    }


}

