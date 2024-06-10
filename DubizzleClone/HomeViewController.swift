//
//  ViewController.swift
//  DubizzleClone
//
//  Created by Varshith Chilamkurthi on 06/06/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var homeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTable.dataSource = self
        homeTable.delegate = self
    }
}
// have 3 sections
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 363
        } else if indexPath.section == 1 {
            return 170
        } else {
            return 180
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .clear
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Section1TableViewCell", for: indexPath) as! Section1TableViewCell
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Section2TableViewCell", for: indexPath) as! Section2TableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Section3TableViewCell", for: indexPath) as! Section3TableViewCell
            return cell
        }
    }
}
