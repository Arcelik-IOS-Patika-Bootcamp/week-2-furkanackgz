//
//  ViewController.swift
//  week2_Assignment
//
//  Created by Furkan Açıkgöz on 31.05.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var roomsInfo: [RoomInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initializing the VC as delegate of table view
        tableView.delegate = self
        
        // Creating data
        createData()
    }
}

extension FirstViewController {
    
    func createData() {
        roomsInfo.append(RoomInfo(name: "Living Room", image: UIImage(named: "livingRoom")!))
        roomsInfo.append(RoomInfo(name: "Kitchen", image: UIImage(named: "kitchen")!))
        roomsInfo.append(RoomInfo(name: "Bedroom", image: UIImage(named: "bedroom")!))
        roomsInfo.append(RoomInfo(name: "Bathroom", image: UIImage(named: "bathroom")!))
        roomsInfo.append(RoomInfo(name: "Gaming Room", image: UIImage(named: "gameRoom")!))
    }
    
}

extension FirstViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension FirstViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
