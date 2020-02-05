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
    
    //@State private var locations = [MKPointAnnotation]()
    //@State private var selectedPlace: Site?
    @State private var showPlaceDetails = false
    var site: Site
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                VStack(spacing: 40){
                    
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
                    
                    //Divider()
                    HStack(spacing: 80){
                        VStack(alignment: .leading,spacing: 20){
                            
                            HStack(alignment: .top){
                                Text("Nom:")
                                Spacer()
                                Text(site.name)
                            }
                            HStack(alignment: .top){
                                Text("Horaire:")
                                Spacer()
                                Text("9h30 à 17h30")
                            }
                            HStack(alignment: .top){
                                Text("Horaire:")
                                Spacer()
                                Text("0€")
                            }
                            HStack(alignment: .top){
                                Text("Adresse:")
                                Spacer()
                                Text(site.adresse)
                            }
                            HStack(alignment: .top){
                                Text("Description:")
                                Spacer()
                                Text(site.desc)
                            }
                        }
                    }
                }.padding()
                
              
                
                MapPointView(sites: [(site)],centre: site.coordinates)
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
                            
                            Text("L’aventure de Simplon débute en 2013 avec Frédéric Bardeau, Andrei Vladescu-Olt et Erwan Kezzar. Inspirés par les premiers bootcamps qui fleurissent un peu partout dans la Silicon Valley, ils rêvent d’une version française plus inclusive et gratuite avec plus de femmes, et plus de recrues de milieux et de territoires différents. ").font(.caption)
                        }
                        
                    }
                    
                }.padding().navigationBarTitle(Text(site.name), displayMode: .inline)
                }
                
            }
            
        }
    
}


struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(site: Site.default)
    }
}



