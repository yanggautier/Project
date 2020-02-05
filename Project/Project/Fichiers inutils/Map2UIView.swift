////
////  ContentView.swift
////  Project
////
////  Created by Guole YANG on 29/01/2020.
////  Copyright © 2020 Guole YANG. All rights reserved.
////
//
//import SwiftUI
//import MapKit
//
//let sites: [Site] = SiteData.sites
//
//struct Map2UIView: View {
//    
//    @State private var showCritereView = false
//  
//    
//    var body: some View {
//        NavigationView{
//        ZStack{
//            MapView(sites: sites, centre: Coordinates(latitude: 48.859162, longitude: 2.439364))
//            
//            Circle()
//                .fill(Color.blue)
//                .opacity(0.3)
//                .frame(width: 32, hieght:  32)
// 
//            
//        }.edgesIgnoringSafeArea(.all)
////        .alert(isPresented: $showInPlaceDetails){
////            Alert(title: Text(selectedPlace?.title ?? "Unknow"), message: Text(selectedPlace?.subtitle ?? "Missing place information"), primaryButton: .default(Text("OK")), secondaryButton: .default(Text("Edit")){
////                })
////        }.navigationBarTitle(Text("Map"), displayMode: .inline)
//        .navigationBarItems(
//                leading: Image(systemName:"camera"),
//            trailing:
//            Button(action:{
//                self.showCritereView.toggle()
//            }){
//                Text("Mon voyage")
//            }
//            )
//        }.sheet(isPresented: $showCritereView) {
//            CritereView(showCritereView: self.$showCritereView)
//        }
//    }
//}
//
//
//struct Map2UIView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView {
//            
//                Map2UIView()
//            .tabItem {
//                Image(systemName: "globe")
//            }
//        }
//    }
//}
