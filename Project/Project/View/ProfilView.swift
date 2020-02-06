//
//  ProfileView.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//


import SwiftUI

struct ProfilView: View {
    
    var personne:Traveler = Traveler(civilite: .homme, firstName: "Durant", lastName: "Henri", naissance: "07/07/1993", email: "durand.h@gmail.com", adress:"55 rue de Vincenne", city: "Montrueil", postal: 93100, tel: "0647869812", interets: [.shop,.music])
    
    @State var username: String = ""
    @State private var civilite: String = "Madame"
    @State var modifiable = false
    
    var body: some View {
        
        //NavigationView {
            ZStack {
                /* Image("fond3")
                 .resizable()
                 .edgesIgnoringSafeArea(.all)*/
                ScrollView {
                    
                    VStack {
                        
                        VStack {
                            Image("businessman")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100.0, height: 100.0)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                //.navigationBarTitle("Mon Profil", displayMode: .inline)
                            
//
//                            Picker(selection:  $civilite, label: Text("")) {
//                                Text("Madame").tag("Madame")
//                                Text("Monsieur").tag("Monsieur")
//                            }.pickerStyle(SegmentedPickerStyle())
//                                .padding(.horizontal, 60.0)
//                                .padding(.top, 10.0)
                        }
                        
                        VStack(spacing: 50) {
//                       TextField("Durand" , text: $username).padding(10)
//
//                            TextField("Henri" , text: $username).padding()
//
//                            TextField("07/07/1993" , text: $username).padding()
//
//                            TextField("55 rue de Vincenne Montreuil" , text: $username).padding()
//
//                            TextField("durand.h@gmail.com" , text: $username).padding()
//
//                            TextField("0647869812" , text: $username).padding()
//
//                            TextField("Aucune" , text: $username).padding()
                            Text("\(personne.lastName) \(personne.firstName)")

                            Text(personne.email)
                            Text(personne.naissance)
                            Text(personne.adress)
                            Text(" \(personne.postal) \(personne.city)")
                            Text(personne.tel)
                            
                            
                        }.padding().textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(Color.black)
                        
                        /*VStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Valider")
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 60.0)
                                    .padding(.vertical, 25)
                                    .background(Color.blue)
                                    .cornerRadius(15)
                            }
                        }*/
                    }.opacity(0.7)
                    //.offset(y: -20)
                }
            }
            .navigationBarTitle(Text("Profil"), displayMode: .inline)
        .navigationBarItems(
                   trailing: Button(action:{
                    //self.$modifiable = true
                   }){
                       Text("Modifier")
                   }
               )
    }
}
struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}

