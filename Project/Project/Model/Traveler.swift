//
//  Traveler.swift
//  Project
//
//  Created by Guole YANG on 30/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import Foundation

struct Traveler {
    var civilite: Civilite
    var firstName: String
    var lastName: String
    var naissance: String
    var email: String
    var adress: String
    var city: String
    var postal: Int
    var tel: String
    var interets: [Interet]
    
}

enum Interet{
    
    case music
    case sport
    case eat
    case shop
}


enum Civilite {
    case homme
    case femme
}
