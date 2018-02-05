//
//  ControllerNavigator.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation
import UIKit

class ControllerNavigator {
    
    class func showCardIssuers(for method: PaymentMethod, amount: Float, delegate: InstallmentsDelegate?) {
        let controller = ControllerSource.cardIssuersController(for: method, amount: amount, delegate: delegate)
        if let nav = UIApplication.window.rootViewController as? UINavigationController {
            nav.pushViewController(controller, animated: true)
        }
    }
    
    class func showInstallments(for method: PaymentMethod, amount: Float, issuer: CardIssuer, delegate: InstallmentsDelegate?) {
        let controller = ControllerSource.installmentsController(for: method, amount: amount, issuer: issuer, delegate: delegate)
        if let nav = UIApplication.window.rootViewController as? UINavigationController {
            nav.pushViewController(controller, animated: true)
        }
    }
    
    class func showPaymentMethod(for amount: Float, delegate: InstallmentsDelegate?) {
        let controller = ControllerSource.paymentMethodController(for: amount, delegate: delegate)
        if let nav = UIApplication.window.rootViewController as? UINavigationController {
            nav.pushViewController(controller, animated: true)
        }
    }
    
}
