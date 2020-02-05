//
//  ContentView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
        //NavigationView{
        
        TabView {
            //NavigationView {
            MapUIView(centre:Coordinates(latitude: 48.859162, longitude: 2.439364))
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
            }
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                     Text("Favoris")
            }
            SignInView()
            .tabItem {
                Image(systemName: "person")
                 Text("Profil")
            }
        //}
        //.navigationBarTitle(Text("Map"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
