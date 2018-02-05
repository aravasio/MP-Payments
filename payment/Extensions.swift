//
//  Extensions.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import UIKit

extension UIApplication {
    
    static var appDelegate:AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    static var window:UIWindow {
        return self.appDelegate.window!
    }
    
}
