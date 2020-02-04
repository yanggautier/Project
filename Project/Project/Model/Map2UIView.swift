//
//  Map2UIView.swift
//  Map first appli voyage
//
//  Created by malika on 28/01/2020.
//  Copyright © 2020 malika ouizbouben. All rights reserved.
//
import SwiftUI
import MapKit

struct Map2View: UIViewRepresentable {
    var latitude: Double
    var longitude: Double
    var span: Double

    typealias UIViewType = MKMapView
    
   func makeUIView(context: UIViewRepresentableContext<Map2View>) -> MKMapView {
       return MKMapView(frame: .zero)
   }

   func updateUIView(_ uiview: MKMapView, context: UIViewRepresentableContext<Map2View>) {
    
       let coordinate = CLLocationCoordinate2D(
           latitude: latitude, longitude: longitude)
       let coordinateSpan = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
       let region = MKCoordinateRegion(center: coordinate, span: coordinateSpan)
       uiview.setRegion(region, animated: true)
   }
}

struct Map2View_Previews: PreviewProvider {
    static var previews: some View {
        Map2View(latitude: 51.512712, longitude: -0.125208, span: 0.04) // LONDRES
    }
}
