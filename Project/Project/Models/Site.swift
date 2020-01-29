//
//  Site.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//


import SwiftUI
import CoreLocation
//struct Site: Hashable, Codable, Identifiable {
struct Site: Identifiable {
    var id = UUID()
    var images:[Image]
    var name: String
    //fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var adresse: String
    var numbre: Int
    //var park: String
    var category: Category
    var isFavorite: Bool
    var isFeatured: Bool

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
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

    enum Category: String, CaseIterable, Codable, Hashable {
        case store = "Magasin"
        case restaurant = "Restaurant"
        case monument = "Monument"
        case sight = "Paysage"
    }
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

