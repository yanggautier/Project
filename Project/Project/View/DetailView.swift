//
//  DetailView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI
import MapKit

struct DetailView: View {
    
    @State private var locations = [MKPointAnnotation]()
    
    var site: Site
    
    var body: some View {
        
        ScrollView {
            
            
            VStack{

                ScrollView(.horizontal){
                    HStack {
                        ForEach(site.images, id: \.self) {
                            image in
                            Image(image)
                                .resizable()
                                .aspectRatio(3 / 2, contentMode: .fit)
                        }
    
                    }
                }.frame(height:300)
                //
                
                
                HStack(spacing: 80){
                    VStack(alignment: .leading,spacing: 5){
                        Text("Nom:")
                        Text("Horaire:")
                        Text("Tarif:")
                        Text("Adresse:")
                        Text("")
                        Text("Description:")
                    }
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(site.name)
                        Text("9h30 à 17h30")
                        Text("0€")
                        Text(site.adresse)
                        
                        Text(site.desc)
                    }
                }.padding()
                
                
                MapView(sites: [(site)])
                    .frame(height: 250)
                
//                site.annotation.title = site.title
//                site.annotation.subtitle = site.subtitle
//                site.annotation.coordinate = site.coordinate
//                
//                locations.append(site.annotation)
                
                
                VStack(alignment: .leading){
                    
                    Text("Avis:")
                    
                    VStack(alignment: .leading){
                        
                        HStack(spacing:30){
                            VStack{
                                Image("traveler")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(width:70,height:70)
                                
                                VStack(alignment: .leading){
                                    Text("Traveler")
                                        .font(.system(size:15.0))
                                    HStack(spacing:-1){
                                        Image(systemName:"star.fill")
                                        Image(systemName:"star.fill")
                                        Image(systemName:"star.fill")
                                        Image(systemName:"star.fill")
                                        Image(systemName:"star.fill")
                                    }.font(.system(size:12.0))
                                        .foregroundColor(.yellow)
                                    
                                }
                            }
                            
                            Text("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.").font(.caption)
                        }
                        
                    }
                    
                }.padding()
                
            }
            
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(site: Site.default)
        
    }
}



/*struct MapView: UIViewRepresentable {
 
 var coord : Coordinates
 
 func makeUIView(context: Context) -> MKMapView {
 MKMapView(frame: .zero)
 }
 
 func updateUIView(_ view: MKMapView, context: Context) {
 let coordinate = CLLocationCoordinate2D(
 latitude: coord.latitude, longitude: coord.longitude)
 let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
 let region = MKCoordinateRegion(center: coordinate, span: span)
 view.setRegion(region, animated: true)
 }
 }*/

/*
 struct MapView_Preview: PreviewProvider {
 static var previews: some View {
 MapView()
 }
 }
 */

