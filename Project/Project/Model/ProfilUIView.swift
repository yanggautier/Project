//
//  ProfilUIView.swift
//  Map first appli voyage
//
//  Created by malika on 29/01/2020.
//  Copyright © 2020 malika ouizbouben. All rights reserved.
//

import SwiftUI

struct ProfilUIView: View {
    
    @State var username: String = ""
    @State private var civilite: String = "Madame"
    
    var body: some View {
        
        NavigationView {
            ZStack {
               /* Image("fond3")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)*/
            ScrollView {
            
        VStack {
            
            VStack {
            Image("avatar")
              .resizable()
              .aspectRatio(contentMode: .fill)
                .frame(width: 100.0, height: 100.0)
              .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
              .navigationBarTitle("Mon Profil", displayMode: .inline)
            
                
                Picker(selection:  $civilite, label: Text("")) {
                    Text("Madame").tag("Madame")
                    Text("Monsieur").tag("Monsieur")
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 60.0)
                    .padding(.top, 10.0)
               
                
            }
            VStack(alignment: .leading, spacing: 2) {
                TextField("Entrer votre nom..." , text: $username).padding(10)
                
                TextField("Entrer votre nom prénom..." , text: $username).padding()
                
                TextField("Entrer votre date de naissance..." , text: $username).padding()
                
                TextField("Entrer votre adresse..." , text: $username).padding()
                
                TextField("Entrer votre E-mail..." , text: $username).padding()
                
                TextField("Entrer votre numéro de Tel..." , text: $username).padding()
                
                TextField("Entrer vos préférences alimentaires..." , text: $username).padding()
            }.padding().textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.black)
            
            
            VStack {
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
            }
            
            
        }.opacity(0.7)
        //.offset(y: -20)
        }
       
            }
    }
}
}
struct ProfilUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilUIView()
    }
}
