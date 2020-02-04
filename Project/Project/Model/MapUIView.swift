//
//  MapUIView.swift
//  Map first appli voyage
//
//  Created by malika on 28/01/2020.
//  Copyright © 2020 malika ouizbouben. All rights reserved.
//

import SwiftUI
import MapKit

struct MapUIView: UIViewRepresentable {
    var latitude: Double
    var longitude: Double
    var span: Double
    
    typealias UIViewType = MKMapView
    
   func makeUIView(context: UIViewRepresentableContext<MapUIView>) -> MKMapView {
       return MKMapView(frame: .zero)
   }

   func updateUIView(_ uiview: MKMapView, context: UIViewRepresentableContext<MapUIView>) {
    
       let coordinate = CLLocationCoordinate2D(
           latitude: latitude, longitude: longitude)
       let coordinateSpan = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
       let region = MKCoordinateRegion(center: coordinate, span: coordinateSpan)
       uiview.setRegion(region, animated: true)
   }
}

struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapUIView(latitude: 48.856196, longitude: 2.431275, span: 0.005)
    }
}
