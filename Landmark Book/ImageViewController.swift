//
//  ImageViewController.swift
//  Landmark Book
//
//  Created by İzzet Kara on 25.06.2019.
//  Copyright © 2019 Izzet Kara. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var landmarkName = ""
    var landmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = landmarkImage
        nameLabel.text = landmarkName
        
        
        
    }
}
