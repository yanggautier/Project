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
    
    
    @State private var civilite: String = "Madame"
    @State var modifiable = false
    
    @State var email: String = ""
    @State var naissance: String = ""
    @State var adresse: String = ""
    @State var ville: String = ""
    @State var postal: String = ""
    
    var body: some View {
        
        //NavigationView {
        ZStack {
            /* Image("fond3")
             .resizable()
             .edgesIgnoringSafeArea(.all)*/
            ScrollView {
                
                VStack(spacing: 50){
                    
                    Spacer()
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
                    
                    
                    VStack(alignment: .leading,spacing: 50) {
                        
                        if !self.modifiable{
                            VStack(spacing: 50){
                                HStack{
                                    Spacer()
                                    Text(personne.lastName)
                                    
                                    Text(personne.firstName)
                                    Spacer()
                                    
                                }
                                Text(personne.email)
                                Text(personne.naissance)
                                Text(personne.adress)
                                Text(" \(String(personne.postal)) \(personne.city)")
                                Text(personne.tel)
                            }.padding()
                            
                            
                        }else{
                            VStack(alignment: .center){
                                TextField("Votre email", text: $email).padding()
                                TextField("Votre date de naissance", text: $naissance).padding()
                                TextField("Votre adresse", text: $adresse).padding()
                                TextField("Votre ville", text: $ville).padding()
                                TextField("Votre code postale", text: $postal).padding()
                                
                                Button(action: {
                                    self.modifiable = false
                                    //personne.email = email
                                }) {
                                    Text("Valider")
                                        .font(.body)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                        .background(Color.blue)
                                        .cornerRadius(15)
                                }
                                
                            }.padding()
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    
                    
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
                self.modifiable = true
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

