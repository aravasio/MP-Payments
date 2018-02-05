//
//  BaseService.swift
//  payment
//
//  Created by Alejandro Ravasio on 1/02/18.
//  Copyright © 2018 Alejandro Ravasio. All rights reserved.
//

import Foundation
import Moya
import SwiftyJSON

protocol BaseService: TargetType {
    associatedtype ParsedModel
    
    var parseJSON: (_ json: JSON) -> (ParsedModel?) { get }
}
