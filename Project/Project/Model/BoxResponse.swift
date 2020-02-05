////
////  BoxResponse.swift
////  Project
////
////  Created by Guole YANG on 30/01/2020.
////  Copyright © 2020 Guole YANG. All rights reserved.
////
//import Foundation
//// MARK: - Box
//struct Box: Codable {
//    let images: [String]
//    let name: String
//    let country: Country
//    let city: City
//    let adresse: String
//    let tarif: Double
//    let tel, category: String
//    let isFavorite, isFeatured: Bool
//    let coordinates: [Coordinate]
//
//    enum CodingKeys: String, CodingKey {
//        case images, name, country, city, adresse, tarif, tel
//        case category, isFavorite, isFeatured, coordinates
//    }
//}
//
//enum City: String, Codable {
//    case londres = "Londres"
//}
//
//// MARK: - Coordinate
//struct Coordinate: Codable {
//    let latitude, longitude: Double
//}
//
//enum Country: String, Codable {
//    case angleterre = "Angleterre"
//    case royaumeUni = "Royaume Uni"
//}
//
//typealias Empty = [Box]
