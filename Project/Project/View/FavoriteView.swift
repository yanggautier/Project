//
//  FavoriteView.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//



import SwiftUI


struct FavoriteView: View {
    @State var favorite: CategoryType = .interets
    
    var body: some View {
        
        NavigationView{
            VStack {
                PickerView(favorite: $favorite)
                if favorite == .interets {
                    CategoryRow(choixSegmented: "Interets")

                }else{
                    CategoryRow(choixSegmented: "Lieux")
                }
                Spacer()
            }
            .navigationBarTitle(Text("Favoris"), displayMode: .inline)
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    
    static var previews: some View {
        FavoriteView()
    }
    
}
