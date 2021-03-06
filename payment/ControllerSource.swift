//
//  ControllerSource.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation
import UIKit

class ControllerSource {
    
    // MARK: Payment method
    
    class func paymentMethodController(for amount: Float, delegate: InstallmentsDelegate?) -> PaymentMethodViewController {
        let controller = UIStoryboard(name: "Payment", bundle:nil).instantiateViewController(withIdentifier: "paymentMethod") as! PaymentMethodViewController
        controller.amount = amount
        controller.delegate = delegate
        return controller
    }
    
    // MARK: Card Issuers
    
    class func cardIssuersController(for method: PaymentMethod, amount: Float, delegate: InstallmentsDelegate?) -> CardIssuersViewController {
        let controller = UIStoryboard(name: "Payment", bundle:nil).instantiateViewController(withIdentifier: "cardIssuers") as! CardIssuersViewController
        controller.paymentMethod = method
        controller.amount = amount
        controller.delegate = delegate
        return controller
    }
    
    // MARK: Installments
    
    class func installmentsController(for method: PaymentMethod, amount: Float, issuer: CardIssuer, delegate: InstallmentsDelegate?) -> InstallmentsViewController {
        let controller = UIStoryboard(name: "Payment", bundle:nil).instantiateViewController(withIdentifier: "installments") as! InstallmentsViewController
        controller.paymentMethod = method
        controller.amount = amount
        controller.issuer = issuer
        controller.delegate = delegate
        return controller
    }
}
