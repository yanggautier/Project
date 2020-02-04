//
//  Site.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//


import SwiftUI
import CoreLocation
import MapKit
//struct Site: Hashable, Codable, Identifiable {

class Site: NSObject, Identifiable, MKAnnotation, Codable{
    
    var id = UUID()
    var images:[String]
    var name: String
    var country: String
    var city: String
    var adresse: String
    var tarif: Double
    var tel: String
    var desc: String
    var category: Category
    var isFavorite: Bool
    var isFeatured: Bool
     //fileprivate
    var coordinates: Coordinates
    
    enum CodingKeys: String, CodingKey {
        case images, name, country, city, adresse, tarif, tel,desc
        case category, isFavorite, isFeatured, coordinates
    }
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    var title: String? {
        return name
    }
    
    var subtitle: String? {
        return category.rawValue
    }
    
    //var annotation = MKPointAnnotation()

    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    init(
        images:[String],
         name: String,
         country: String,
         city: String,
         adresse: String,
         tarif: Double,
         tel: String,
         desc: String,
         category: Category,
         isFavorite: Bool,
         isFeatured: Bool,
         coordinates: Coordinates){
        self.images = images
        self.name = name
        self.country = country
        self.city = city
        self.adresse = adresse
        self.tarif = tarif
        self.tel = tel
        self.desc = desc
        self.category = category
        self.isFavorite = isFavorite
        self.isFeatured = isFeatured
        self.coordinates = coordinates
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case store      = "Magasin"
        case restaurant = "Restaurant"
        case monument   = "Monument"
        case sight      = "Paysage"
        
    }

    static let `default` = Site(images: ["simplon","total"], name: "Simplon", country: "France", city: "Montrueil", adresse: "55 Rue des Vincennes\n 933000 Montueil", tarif: 0, tel: "0140509878", desc: "Centre de formation", category: Site.Category.sight, isFavorite: true, isFeatured: false, coordinates: Coordinates(latitude: 48.8544945, longitude: 2.4337783))
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
//
//enum City: String, Codable {
//    case londres   = "Londres"
//    case paris     = "Paris"
//    case montrueil = "Montrueil"
//}
//
//enum Country: String, Codable {
//    case angleterre = "Angleterre"
//    case royaumeUni = "Royaume Uni"
//    case france = "France"
//}

typealias Empty = [Site]

