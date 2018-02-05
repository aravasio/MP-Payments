//
//  CardIssuerCell.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class CardIssuersCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var issuerImageView: UIImageView!
    
    var item = CardIssuer() {
        didSet {
            self.nameLabel.text = item.name
            self.issuerImageView.image = nil //This should be a placeholder :)
            Alamofire.request(item.secureThumbnail).responseImage { response in
                if let image = response.result.value {
                    UIView.transition(with: self.issuerImageView,
                                      duration: 1,
                                      options: .transitionCrossDissolve,
                                      animations: { self.issuerImageView.image = image },
                                      completion: nil)
                }
            }
        }
    }
    
}
