//
//  ViewController.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import UIKit

final class RankingsViewController: UITableViewController {
    
    let DRIVER_CELL_IDENTIFIER = "DriverCellIdentifier" // set in storyboard for reuse id
    let sections: Int = 1 // we don't need multiple sections ATM.
    let rowHeight: CGFloat = 80.0 // basic height, will adapt if time remains
    let driverStoreViewModel = DriverStoreViewModel()
    
    private func bind(to viewModel: DriverStoreViewModel) {
        viewModel.bindAction(action: {
            driversInfo in
            print("Found \(driversInfo.count) results")
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            })
        }

    @IBAction func refreshControlValueChanged(_ sender: UIRefreshControl) {
        driverStoreViewModel.requestRefresh() // reloadData is commanded by the VM
        sender.endRefreshing() // do not wait for the actual new data to remove the refresh indicator
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.setNeedsLayout()
        tableView.contentInset = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: 5)
        bind(to: driverStoreViewModel)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.layoutIfNeeded()
        driverStoreViewModel.requestRefresh()  // reloadData is commanded by the VM
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DRIVER_CELL_IDENTIFIER) as! DriverTableViewCell
        // Fake it till you make it (when view model is coded in)
        //let di = DriverInformation(rank: 1, user: "Captain America", score: 10000, distance: 2000.50, userId: "fastrunner@usa.gov")
        let di = driverStoreViewModel.items.value[indexPath.row]
        cell.setDriverInformation(di)
        return cell
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: // initial section
            return driverStoreViewModel.items.value.count
        default:
            return 0 // No coder added another section in, so don't crash :)
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rowHeight;
    }
}

