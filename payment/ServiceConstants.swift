//
//  ServiceConstants.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation

struct ServiceConstants {
    struct BaseURL {
        static var Payment: String {
            return "https://api.mercadopago.com/v1/"
        }
    }
    
    struct PublicKey {
        static var Payment: String {
            return "444a9ef5-8a6b-429f-abdf-587639155d88"
        }
    }
}
