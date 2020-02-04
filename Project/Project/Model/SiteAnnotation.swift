//
//  SiteAnnotation.swift
//  Project
//
//  Created by Guole YANG on 31/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import Foundation
import MapKit

final class SiteAnnotation: NSObject, MKAnnotation {
    let id: String
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(site:Site){
        self.id = site.name
        self.title = site.name
        self.coordinate = site.locationCoordinate
    }
    
}
