//
//  MapView.swift
//  Project
//
//  Created by Guole YANG on 30/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import MapKit
import SwiftUI
import CoreLocation


struct MapListView: UIViewRepresentable {
    
    @Binding var sites:[Site]
    
    var annotations: [MKPointAnnotation]
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        let latDelta = 0.05
        let longDelta = 0.05
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta,longitudeDelta: longDelta)
        let center:CLLocation = CLLocation(latitude: 32.029171, longitude: 118.788231)
        let currentRegion:MKCoordinateRegion = MKCoordinateRegion(center:center.coordinate,span: currentLocationSpan)
        mapView.setRegion(currentRegion, animated: true)
        
        /*let annotation = MKPointAnnotation()
         annotation.title = "Some site"
         annotation.subtitle = "Capital of England"
         annotation.coordinate = CLLocationCoordinate2D(latitude: 32.029171, longitude: 118.788231)
         mapView.addAnnotation(annotation)*/
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        if annotations.count != view.annotations.count {
            view.removeAnnotations(view.annotations)
            view.addAnnotations(annotations)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapListView
        
        init(_ parent: MapListView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation)->MKAnnotationView? {
            
            let identifier = "Placemark"
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil{
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            } else {
                annotationView?.annotation = annotation
            }
            return annotationView
            
        }
        
    }
    
}


//struct MapListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapListView(sites: MapListView.constant(exampleList))
//    }
//}
