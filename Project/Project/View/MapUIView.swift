//
//  ContentView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI
import MapKit

struct MapUIView: View {
    
    @State private var showCritereView = false
    @State var centre: Coordinates
    @State private var selectedPlace: Site? = nil
    @State private var showingPlaceDetails = false
    @State private var showButton = false
    
    var body: some View {
        NavigationView{
            ZStack{
                MapView(selectedPlace: $selectedPlace,showingPlaceDetails: $showingPlaceDetails, sites: SiteData.sites, centre: self.centre)
                
                if showButton{
                    NavigationLink(destination: DiscoverView()){
                        //Image(systemName: "trash") .font(.title)
                        Text("Proposition")
                            .fontWeight(.semibold)
                            .font(.headline)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(15)
                        
                    }.offset(x:0,y:250)
                }
                
                //.frame(minWidth: 0, maxWidth: .infinity)
                if selectedPlace != nil {
                    NavigationLink(destination: DetailView(
                        site: selectedPlace!),isActive:self.$showingPlaceDetails
                    ) {
                        EmptyView()
                    }
                }
            }
            .navigationBarItems(
                trailing: Button(action:{
                    self.showCritereView.toggle()
                }){
                    Text("Mon voyage")
                }
                
            ).edgesIgnoringSafeArea(.all)
                
                
                .sheet(isPresented: $showCritereView) {
                    CritereView(showCritereView: self.$showCritereView,centre: self.$centre,
                                showButton: self.$showButton)
            }//.navigationBarTitle("Map")
            
        } //
        
    }
}


struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            
            MapUIView(centre: Coordinates(latitude: 48.859162, longitude: 2.439364))
                .tabItem {
                    Image(systemName: "globe")
            }
        }
    }
}
