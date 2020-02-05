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
    @State private var selectedPlace: Site?
    @State private var showingPlaceDetails = false
    
    var body: some View {
        NavigationView{
        ZStack{
            MapView(selectedPlace: $selectedPlace,showingPlaceDetails: $showingPlaceDetails, sites: SiteData.sites, centre: self.centre)
            
        }   .navigationBarItems(
                 trailing: Button(action:{
                     self.showCritereView.toggle()
                 }){
                     Text("Mon voyage")
                 }
             )
        .edgesIgnoringSafeArea(.all)
        
        
//        .alert(isPresented: $showingPlaceDetails){ Alert(title: Text(selectedPlace?.title ?? "Unknow"), message: Text(selectedPlace?.subtitle ?? "Missing place information"), primaryButton: .default(
//            //NavigationLink(destination: DetailView(site: site)){
//            Text("OK")), secondaryButton: .default(Text("Edit")){
//            }
//            )
//        }
           
            
            .sheet(isPresented: $showCritereView) {
                CritereView(showCritereView: self.$showCritereView,centre: self.$centre)
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
