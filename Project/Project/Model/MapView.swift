//
//  MapView.swift
//  Project
//
//  Created by Guole YANG on 30/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import MapKit
import SwiftUI
//import CoreLocation


struct MapView: UIViewRepresentable {
    
    let sites:[Site]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        uiView.removeAnnotations(sites)
        uiView.addAnnotations(sites)
    }
    
    
    //@Binding var centerCoordinate: CLLocationCoordinate2D
    //@Binding var selectedPlace: MKPointAnnotation?
    //@Binding var showingPlaceDetails: Bool
    //@Binding var sites:[Site]
    
    //var annotations: [MKPointAnnotation]
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
//        let latDelta = 0.05
//        let longDelta = 0.05
//        
//        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta,longitudeDelta: longDelta)
//        let center:CLLocation = CLLocation(latitude: 32.029171, longitude: 118.788231)
//        let currentRegion:MKCoordinateRegion = MKCoordinateRegion(center:center.coordinate,span: currentLocationSpan)
//        mapView.setRegion(currentRegion, animated: true)
//        
        mapView.showsUserLocation = true
        
        /*let annotation = MKPointAnnotation()
         annotation.title = "Some site"
         annotation.subtitle = "Capital of England"
         annotation.coordinate = CLLocationCoordinate2D(latitude: 32.029171, longitude: 118.788231)
         mapView.addAnnotation(annotation)*/
        
        return mapView
    }
    
    //    func updateUIView(_ view: MKMapView, context: Context) {
    //        if annotations.count != view.annotations.count {
    //            view.removeAnnotations(view.annotations)
    //            view.addAnnotations(annotations)
    //        }
    //    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        //        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
        //            parent.centerCoordinate = mapView.centerCoordinate
        //        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation)->MKAnnotationView? {
            
            let identifier = "Placemark"
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil{
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                //annotationView?.pinTintColor = .blue
                //annotationView?.image = UIImage(named:"total")
                annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            } else {
                annotationView?.annotation = annotation
            }
            return annotationView
            
        }
        
        func mapView(_ mapView: MKMapView, annotationview view: MKAnnotationView, calloutAccessoryControlTappend control: UIControl){
            //            guard let placemark = view.annotation as? MKPointAnnotation else {return}
            //            parent.selectedPlace = placemark
            //            parent.showingPlaceDetails = true
        }
    }
    
}



//extension MKPointAnnotation {
//    static var example: MKPointAnnotation {
//        let annotation = MKPointAnnotation()
//        annotation.title = "London"
//        annotation.subtitle = "Home to the 2012 Summer Olympics."
//        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: 0.13)
//        return annotation
//    }
//}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        //        MapView(centerCoordinate: .constant(MKPointAnnotation.example.coordinate), selectedPlace: .constant(MKPointAnnotation.example), showingPlaceDetails: .constant(false),annotations: [MKPointAnnotation.example])
        MapView(sites: [
            Site(images: ["simplon","total"],
                 name: "Simplon",
                 country: "France",
                 city: "Montrueil",
                 adresse: "55 Rue des Vincennes\n 933000 Montueil",
                 tarif: 0,
                 tel: "0140509878",
                 desc: "Centre de formation",
                 category: Site.Category.sight,
                 isFavorite: true, isFeatured: false,
                 coordinates: Coordinates(latitude: 48.8544945,
                                          longitude: 2.4337783))
                ])
    }
}
