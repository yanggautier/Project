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
    
    @Binding var selectedPlace: Site?
    @Binding var showingPlaceDetails: Bool
    
    let sites:[Site]
    
    var centre: Coordinates
    
    //        = Coordinates(latitude: 51.5073509, longitude: -0.1277583)
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        uiView.removeAnnotations(sites)
        uiView.addAnnotations(sites)
        
        let latDelta = 0.05
        let longDelta = 0.05
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        let center:CLLocation = CLLocation(latitude: centre.latitude, longitude: centre.longitude )
        let currentRegion:MKCoordinateRegion = MKCoordinateRegion(center:center.coordinate,span: currentLocationSpan)
        uiView.setRegion(currentRegion, animated: true)
    }
    
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        
        mapView.delegate = context.coordinator
        let latDelta = 0.5
        let longDelta = 0.5
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta,longitudeDelta: longDelta)
        let center:CLLocation = CLLocation(latitude: centre.latitude
            , longitude: centre.longitude )
        let currentRegion:MKCoordinateRegion = MKCoordinateRegion(center:center.coordinate,span: currentLocationSpan)
        mapView.setRegion(currentRegion, animated: true)
        
        mapView.showsUserLocation = true
        
        return mapView
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation)->MKAnnotationView? {
            
            let identifier = "Placemark"
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil{
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                annotationView?.image = UIImage(named: "locationPin")
                let button = UIButton(type: .detailDisclosure)
                annotationView?.rightCalloutAccessoryView = button
                
            } else {
                annotationView?.annotation = annotation
            }
            return annotationView
        }
        
        func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
            guard let site = view.annotation as? Site else { return }
            parent.selectedPlace = site
            parent.showingPlaceDetails = true
            
        }
    }
}

extension MKPointAnnotation {
    static var example: MKPointAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = "London"
        annotation.subtitle = "Home to the 2012 Summer Olympics."
        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.5,longitude: 0.13)
        return annotation
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(selectedPlace: .constant(Site(images: ["simplon","total"],
        name: "Simplon",
        country:.france,
        city:.montreuil,
        adresse: "55 Rue des Vincennes\n 933000 Montreuil",
        tarif: 0,
        tel: "0140509878",
        desc: "Centre de formation",
        category: Site.CategorySite.parc,
        isFavorite: true, isFeatured: false,
        coordinates: Coordinates(latitude: 48.8544945,
                                 longitude: 2.4337783))), showingPlaceDetails: .constant(false),
                sites: [
                    Site(images: ["simplon","total"],
                         name: "Simplon",
                         country: .france,
                         city: .montreuil,
                         adresse: "55 Rue des Vincennes\n 933000 Montreuil",
                         tarif: 0,
                         tel: "0140509878",
                         desc: "Centre de formation",
                         category: Site.CategorySite.parc,
                         isFavorite: true, isFeatured: false,
                         coordinates: Coordinates(latitude: 48.8544945,
                                                  longitude: 2.4337783))
            ],
                centre: Coordinates(latitude: 51.5073509, longitude: -0.1277583))
    }
}
