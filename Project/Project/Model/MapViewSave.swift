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


struct MapView2: UIViewRepresentable {
    
    @Binding var centerCoordinate: CLLocationCoordinate2D
    var annotations: [MKPointAnnotation]
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        /*
         let annotation = MKPointAnnotation()
         annotation.title = "Some site"
         annotation.subtitle = "Capital of England"
         annotation.coordinate = CLLocationCoordinate2D(latitude: 52.5, longitude: 0.13)
         mapView.addAnnotation(annotation)
         */
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
    
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation)->MKAnnotationView? {
        
        if annotation is MKUserLocation{
            
            
            return nil
        }
        let reuserId = "pin"
        
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuserId)
            as? MKPinAnnotationView
        if pinView == nil{
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuserId)
            pinView?.canShowCallout = true
            pinView?.animatesDrop = true
            pinView?.pinTintColor = UIColor.green
            pinView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }else{
            pinView?.annotation = annotation
        }
        return pinView
        /*
         let view = MKPinAnnotationView(annotation: annotaion, reuseIdentifier: nil)
         view.canShowCallout = true
         return  view*/
        
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView2
        
        init(_ parent: MapView2) {
            self.parent = parent
        }
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            parent.centerCoordinate = mapView.centerCoordinate
        }
    }
    
}


extension MKPointAnnotation {
    static var example2: MKPointAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = "London"
        annotation.subtitle = "Home to the 2012 Summer Olympics."
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: 0.13)
        return annotation
    }
}



struct MapView2_Previews: PreviewProvider {
    static var previews: some View {
        MapView(centerCoordinate: .constant(MKPointAnnotation.example2.coordinate), annotations: [MKPointAnnotation.example2])
    }
}
