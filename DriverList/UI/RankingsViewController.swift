//
//  ViewController.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import UIKit

class RankingsViewController: UITableViewController {
    
    
    
    let DRIVER_CELL_IDENTIFIER = "DriverCellIdentifier" // set in storyboard for reuse id
    let sections: Int = 1 // we don't need multiple sections ATM.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.setNeedsLayout()
        tableView.contentInset = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: 5)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.layoutIfNeeded()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DRIVER_CELL_IDENTIFIER) as! DriverTableViewCell
        // Fake it till you make it (when view model is coded in)
        let di = DriverInformation(rank: 1, user: "Captain America", score: 10000, distance: 2000.50, userId: "fastrunner@usa.gov")
        cell.setDriverInformation(di)
        return cell
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: // initial section
            return 1 // FAKE DATA
        default:
            return 0 // No coder added another section in, so don't crash :)
        }
    }
    
}

