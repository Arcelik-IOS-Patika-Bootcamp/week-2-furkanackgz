//
//  SecondViewController.swift
//  week2_Assignment
//
//  Created by Furkan Açıkgöz on 1.06.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SecondViewController: FirstViewControllerDelegate {
    
    /*
     After FirstVC calls this method setup UI components with the
     passed data.
     */
    func rowWasTapped(_ roomInfo: RoomInfo) {
        imageView.image = roomInfo.image
        label.text = roomInfo.name
    }
}
