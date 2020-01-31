//
//  User.swift
//  Project
//
//  Created by Guole YANG on 30/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import Foundation

struct Traveler {
    
    var firstName: String
    var lastName: String
    var location: String
    var email: String
    var interets: [Interet]
    
}

enum Interet{
    
    case music
    case sport
    case eat
    case shop
}
