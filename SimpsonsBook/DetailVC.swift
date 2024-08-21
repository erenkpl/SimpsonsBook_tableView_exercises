//
//  DetailVC.swift
//  SimpsonsBook
//
//  Created by Eren on 12.08.2024.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson?.name
        imageView.image = selectedSimpson?.image
        jobLabel.text = selectedSimpson?.job
        
    }

}
