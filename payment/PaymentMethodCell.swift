//
//  PaymentMethodCell.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation
import UIKit

class PaymentMethodCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var item = PaymentMethod() {
        didSet {
            self.nameLabel.text = item.name
        }
    }
    
}
