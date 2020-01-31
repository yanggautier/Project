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

class Site: Identifiable/*, MKAnnotation */{
    
    var id = UUID()
    var images:[String]
    var name: String
    var country: String
    var city: String
    var adresse: String
    var tarif: Double
    var tel: String
    var description: String
    var category: Category
    var isFavorite: Bool
    var isFeatured: Bool
     //fileprivate
    var coordinates: Coordinates
    //var annotation: MKPointAnnotation()

    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    init(images:[String],
         name: String,
         country: String,
         city: String,
         adresse: String,
         tarif: Double,
         tel: String,
         description: String,
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
        self.description = description
        self.category = category
        self.isFavorite = isFavorite
        self.isFeatured = isFeatured
        self.coordinates = coordinates
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case store = "Magasin"
        case restaurant = "Restaurant"
        case monument = "Monument"
        case sight = "Paysage"
        
    }
    /*
     var featureImage: Image? {
     guard isFeatured else { return nil }
     
     return Image(
     ImageStore.loadImage(name: "\(imageName)_feature"),
     scale: 2,
     label: Text(name))
     }
     */
    
    static let `default` = Site(images: ["simplon","total"], name: "Simplon", country: "France", city: "Montrueil", adresse: "55 Rue des Vincennes", tarif: 0, tel: "0140509878", description: "Centre de formation", category: Site.Category.sight, isFavorite: true, isFeatured: false, coordinates: Coordinates(latitude: 34.011286, longitude: -116.166868))
    
}


/*
 extension Site {
 var image: Image {
 ImageStore.shared.image(name: imageName)
 }
 }
 */

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

