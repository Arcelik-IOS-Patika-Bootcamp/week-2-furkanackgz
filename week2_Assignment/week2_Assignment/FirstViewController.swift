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
        
        // Setting Up UI
        setupUI()
        
        // Creating data
        createData()
        tableView.reloadData()
    }
}

extension FirstViewController {
    
    func setupUI() {
        // Initializing the VC as delegate of table view
        tableView.delegate = self
        tableView.dataSource = self
        
        // Registering table view cell
        tableView.register(UINib(nibName: "RoomTableViewCell", bundle: nil), forCellReuseIdentifier: "RoomTableViewCell")
    }
    
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
        return roomsInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTableViewCell", for: indexPath) as! RoomTableViewCell
        cell.label.text = roomsInfo[indexPath.row].name
        return cell
    }
}
