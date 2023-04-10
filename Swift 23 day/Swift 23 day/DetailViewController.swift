//
//  DetailViewController.swift
//  Swift 23 day
//
//  Created by Демьян Горчаков on 10.04.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var imageCountry: UIImageView!
    var label: String?
    var image: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detail"
        navigationItem.largeTitleDisplayMode = .never
        
        if let currentImage = image {
            imageCountry.image = UIImage(named: currentImage)
        }
        if let currentLabel = label {
            titleLable.text = currentLabel
        }
        
        imageCountry.layer.borderWidth = 1
        imageCountry.layer.borderColor = UIColor.lightGray.cgColor
    }
}
