//
//  WithTabView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct WithTabView: View {
    var body: some View {
        TabView {
            //NavigationView{
            Text ("Map")
                .tabItem {
                    
                    Image(systemName: "map")
                    Text("Rose")
            }
            //}
            Text( "Favoris")
                .tabItem {
                    
                    Image(systemName: "heart")
                    Text("Favoris")
            }
            
             Text( "Profile")
                .tabItem {
                    
                    Image(systemName: "person")
                    Text("Profile")
            }
        }//.navigationBarTitle(Text("Navigation"), displayMode: .inline)
        //.edgesIgnoringSafeArea(.top)
    }
}

struct WithTabView_Previews: PreviewProvider {
    static var previews: some View {
        WithTabView()
    }
}


struct User: Identifiable{
    var id:Int
    var prenom: String
    var nom:String
    var lieu:String
    var telephone:Int
    var etat_confidentiel: Cacher
    
}

enum Cacher{
    case oui,non
}
