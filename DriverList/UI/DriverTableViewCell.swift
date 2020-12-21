//
//  DriverTableViewCell.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import UIKit

class DriverTableViewCell: UITableViewCell {
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    // Kind of a data protection leak, since it's actually emails...
    @IBOutlet weak var usrIdLabel: UILabel!
}
