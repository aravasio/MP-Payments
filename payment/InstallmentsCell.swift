//
//  InstallmentsCell.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation
import UIKit

class InstallmentsCell: UITableViewCell {
    
    @IBOutlet weak var recommendedMessageLabel: UILabel!
    
    var item = Installment() {
        didSet {
            self.recommendedMessageLabel.text = item.recommendedMessage
        }
    }
    
}
